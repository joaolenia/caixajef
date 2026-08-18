import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Like, Repository } from 'typeorm';
import { Ficha } from './entitites/fichas.entity';

@Injectable()
export class FichasService {
  constructor(
    @InjectRepository(Ficha)
    private readonly fichasRepository: Repository<Ficha>,
  ) {}

  // Cria uma nova ficha (Geralmente quando uma venda no crediário é finalizada)
  async create(dadosFicha: Partial<Ficha>): Promise<Ficha> {
    const novaFicha = this.fichasRepository.create(dadosFicha);
    return await this.fichasRepository.save(novaFicha);
  }

  // Retorna todas as fichas, ordenadas pela última atualização
  async findAll(): Promise<Ficha[]> {
    return await this.fichasRepository.find({
      order: {
        dataAtualizacao: 'DESC',
      },
    });
  }

  // Retorna uma ficha específica pelo ID
  async findOne(id: number): Promise<Ficha> {
    const ficha = await this.fichasRepository.findOne({ where: { id } });
    
    if (!ficha) {
      throw new NotFoundException(`Ficha com ID ${id} não encontrada.`);
    }
    
    return ficha;
  }

  // Atualiza uma ficha (Usado para registrar um novo pagamento parcial/integral ou nova compra)
  async update(id: number, dadosAtualizacao: Partial<Ficha>): Promise<Ficha> {
    // 1. Busca a ficha existente para garantir que ela existe
    const ficha = await this.findOne(id);

    // 2. Mescla os dados antigos com os dados novos que vieram do front-end
    const fichaAtualizada = this.fichasRepository.merge(ficha, dadosAtualizacao);

    // 3. Regra de Negócio: Verifica o saldo para atualizar o status automaticamente
    const valorPago = Number(fichaAtualizada.valorPago) || 0;
    const valorTotal = Number(fichaAtualizada.valorTotal) || 0;

    if (valorPago >= valorTotal && valorTotal > 0) {
      fichaAtualizada.status = 'PAGA';
    } else {
      fichaAtualizada.status = 'ABERTA';
    }

    // 4. Salva e retorna a ficha atualizada
    return await this.fichasRepository.save(fichaAtualizada);
  }

  // Busca fichas pelo nome do cliente (busca parcial, ex: "joao" acha "Joao Silva")
  async findByClienteNome(nome: string): Promise<Ficha[]> {
    return await this.fichasRepository.find({
      where: {
        clienteNome: Like(`%${nome}%`),
      },
      order: {
        dataAtualizacao: 'DESC', // Mostra as fichas movimentadas mais recentemente primeiro
      },
    });
  }
  async delete(id: number): Promise<void> {
    const ficha = await this.findOne(id);
    await this.fichasRepository.remove(ficha);
  }
}