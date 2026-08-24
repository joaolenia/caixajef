import { Injectable, NotFoundException, BadRequestException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Cofre, MovimentacaoCofre } from './entities/cofre.entity';

@Injectable()
export class CofreService {
  constructor(
    @InjectRepository(Cofre)
    private readonly cofreRepository: Repository<Cofre>,
  ) {}

  // Busca ou cria o registro único do cofre
  async getCofre(): Promise<Cofre> {
    let cofre = await this.cofreRepository.findOne({ where: { id: 1 } });
    if (!cofre) {
      cofre = this.cofreRepository.create({
        id: 1,
        saldo: 0,
        movimentacoes: [],
      });
      await this.cofreRepository.save(cofre);
    }
    return cofre;
  }

  // Registra uma nova entrada ou saída
  async adicionarMovimentacao(
    tipo: 'entrada' | 'saida',
    valor: number,
    descricao: string,
    origem: 'caixa' | 'externo' | 'cofre',
  ): Promise<Cofre> {
    
    if (valor <= 0) {
      throw new BadRequestException('O valor deve ser maior que zero.');
    }

    const cofre = await this.getCofre();

    // Validação de saldo para saída
    if (tipo === 'saida' && Number(cofre.saldo ?? 0) < valor) {
      throw new BadRequestException('Saldo insuficiente no cofre para realizar esta retirada.');
    }

    // Atualiza o saldo
    if (tipo === 'entrada') {
      cofre.saldo = Number(cofre.saldo) + Number(valor);
    } else {
      cofre.saldo = Number(cofre.saldo) - Number(valor);
    }

    // Prepara a nova movimentação
    const novaMovimentacao: MovimentacaoCofre = {
      id: Date.now(), // Gera um ID único baseado no timestamp
      dataHora: new Date().toISOString(),
      tipo,
      valor: Number(valor),
      descricao,
      origem,
    };

    // Garante que o array existe
    if (!cofre.movimentacoes) {
      cofre.movimentacoes = [];
    }

    // Adiciona a movimentação no início da lista (mais recentes primeiro)
    cofre.movimentacoes.unshift(novaMovimentacao);

    return this.cofreRepository.save(cofre);
  }
}