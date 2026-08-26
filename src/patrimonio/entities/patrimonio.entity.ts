import { Entity, PrimaryGeneratedColumn, Column, UpdateDateColumn } from 'typeorm';

export interface MovimentacaoPatrimonio {
  id: string;
  tipo: 'entrada' | 'saida' | 'sangria';
  valor: number;
  descricao: string;
  data: string; // ISO String
}

@Entity('patrimonio')
export class Patrimonio {
  @PrimaryGeneratedColumn()
  id?: number;

  @Column({ type: 'decimal', precision: 12, scale: 2, default: 0 })
  saldo?: number;

  // Armazena o histórico em JSON, conforme solicitado
  @Column({ type: 'json', nullable: true })
  movimentacoes?: MovimentacaoPatrimonio[];

  @UpdateDateColumn()
  dataAtualizacao?: Date;
}