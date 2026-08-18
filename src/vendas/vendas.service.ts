import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Venda } from './entities/venda.entity';

@Injectable()
export class VendasService {
  constructor(
    @InjectRepository(Venda)
    private vendasRepository: Repository<Venda>,
  ) {}

  // CREATE: Cria e salva a venda direto com os dados recebidos
  async create(dadosVenda: Partial<Venda>): Promise<Venda> {
    const novaVenda = this.vendasRepository.create(dadosVenda);
    return await this.vendasRepository.save(novaVenda);
  }

  // GET ALL: Retorna todas as vendas ordenadas das mais recentes para as mais antigas
  async findAll(): Promise<Venda[]> {
    return await this.vendasRepository.find({
      order: {
        dataHora: 'DESC',
      },
    });
  }

  // GET BY ID: Busca uma venda específica pelo ID
  async findOne(id: number): Promise<Venda> {
    const venda = await this.vendasRepository.findOne({ where: { id } });
    
    if (!venda) {
      throw new NotFoundException(`Venda com ID ${id} não encontrada.`);
    }
    
    return venda;
  }
}