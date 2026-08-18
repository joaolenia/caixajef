import { 
  Entity, 
  PrimaryGeneratedColumn, 
  Column, 
  CreateDateColumn 
} from 'typeorm';

// Interface para tipar o JSON e manter o Typescript feliz e seguro
export interface ItemCaixa {
  id: number;
  nome: string;
  qtd: number;
  preco: number;
}

@Entity('vendas')
export class Venda {
  @PrimaryGeneratedColumn()
  id?: number;

  // Salva a lista de itens exatamente como veio do frontend
  @Column({ type: 'json' })
  itens?: ItemCaixa[];

  @Column({ type: 'decimal', precision: 10, scale: 2 })
  total?: number;

  @Column({ name: 'valor_recebido', type: 'decimal', precision: 10, scale: 2 })
  valorRecebido?: number;

  @Column({ type: 'decimal', precision: 10, scale: 2 })
  troco?: number;

  // 'Dinheiro', 'Cartão', 'Pix'
  @Column({ name: 'forma_pagamento', type: 'varchar', length: 50 })
  formaPagamento?: string;

  // O TypeORM preenche isso automaticamente com a data e hora do banco no momento do insert
  @CreateDateColumn({ name: 'data_hora' })
  dataHora?: Date;
}