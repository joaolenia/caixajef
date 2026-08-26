import { Injectable, BadRequestException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Patrimonio, MovimentacaoPatrimonio } from './entities/patrimonio.entity';
import { v4 as uuidv4 } from 'uuid'; // Recomendado usar uuid para os IDs do JSON: npm install uuid

@Injectable()
export class PatrimonioService {
  constructor(
    @InjectRepository(Patrimonio)
    private patrimonioRepository: Repository<Patrimonio>,
  ) {}

  // Busca o registro único do patrimônio. Se não existir, cria com saldo 0.
  async visualizarDetalhes(): Promise<Patrimonio> {
    let patrimonio = await this.patrimonioRepository.findOne({ where: { id: 1 } });
    
    if (!patrimonio) {
      patrimonio = this.patrimonioRepository.create({
        id: 1,
        saldo: 0,
        movimentacoes: [],
      });
      await this.patrimonioRepository.save(patrimonio);
    }

    // Garante que retorne um array mesmo se a coluna estiver vazia no banco
    if (!patrimonio.movimentacoes) {
      patrimonio.movimentacoes = [];
    }

    return patrimonio;
  }

  // Método para Colocar Dinheiro (Entrada ou Sangria do Cofre)
  async colocarDinheiro(valor: number, descricao: string, tipo: 'entrada' | 'sangria' = 'entrada'): Promise<Patrimonio> {
    if (valor <= 0) {
      throw new BadRequestException('O valor deve ser maior que zero.');
    }

    const patrimonio = await this.visualizarDetalhes();

    const novaMovimentacao: MovimentacaoPatrimonio = {
      id: uuidv4(),
      tipo,
      valor,
      descricao,
      data: new Date().toISOString(),
    };

    // Atualiza o saldo somando o valor (convertendo para garantir matemática correta)
    patrimonio.saldo = Number(patrimonio.saldo) + Number(valor);
    
    // Insere a nova movimentação no INÍCIO do array
    (patrimonio.movimentacoes ??= []).unshift(novaMovimentacao);

    return this.patrimonioRepository.save(patrimonio);
  }

  // Método para Tirar Dinheiro (Saída)
  async tirarDinheiro(valor: number, descricao: string): Promise<Patrimonio> {
    if (valor <= 0) {
      throw new BadRequestException('O valor deve ser maior que zero.');
    }

    const patrimonio = await this.visualizarDetalhes();

    if (Number(patrimonio.saldo) < valor) {
      throw new BadRequestException('Saldo insuficiente no patrimônio.');
    }

    const novaMovimentacao: MovimentacaoPatrimonio = {
      id: uuidv4(),
      tipo: 'saida',
      valor,
      descricao,
      data: new Date().toISOString(),
    };

    // Atualiza o saldo subtraindo o valor
    patrimonio.saldo = Number(patrimonio.saldo) - Number(valor);
    
    // Insere a nova movimentação no INÍCIO do array
    (patrimonio.movimentacoes ??= []).unshift(novaMovimentacao);

    return this.patrimonioRepository.save(patrimonio);
  }
}