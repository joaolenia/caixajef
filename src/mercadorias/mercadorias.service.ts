import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { MercadoriaOperacao } from './entities/mercadorias.entity';

@Injectable()
export class MercadoriasService {
  constructor(
    @InjectRepository(MercadoriaOperacao)
    private mercadoriasRepository: Repository<MercadoriaOperacao>,
  ) {}

  // CREATE
  async create(data: Partial<MercadoriaOperacao>): Promise<MercadoriaOperacao> {
    const novaOperacao = this.mercadoriasRepository.create(data);
    return await this.mercadoriasRepository.save(novaOperacao);
  }

  // GET ALL
  async findAll(): Promise<MercadoriaOperacao[]> {
    return await this.mercadoriasRepository.find({
      order: { dataOperacao: 'DESC', dataCriacao: 'DESC' }, 
    });
  }

  // GET BY ID
  async findOne(id: number): Promise<MercadoriaOperacao> {
    const operacao = await this.mercadoriasRepository.findOne({ where: { id } });
    
    if (!operacao) {
      throw new NotFoundException(`Operação de mercadoria com ID ${id} não encontrada.`);
    }
    
    return operacao;
  }

  // UPDATE
  async update(id: number, data: Partial<MercadoriaOperacao>): Promise<MercadoriaOperacao> {
    const operacao = await this.findOne(id); 
    
    this.mercadoriasRepository.merge(operacao, data);
    
    return await this.mercadoriasRepository.save(operacao);
  }

  // DELETE
  async remove(id: number): Promise<void> {
    const operacao = await this.findOne(id);
    await this.mercadoriasRepository.remove(operacao);
  }
}