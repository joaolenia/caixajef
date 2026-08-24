import { Entity, Column, PrimaryGeneratedColumn, CreateDateColumn, UpdateDateColumn } from 'typeorm';

// Interface que define a estrutura do JSON da movimentação
export interface MovimentacaoCofre {
  id: number;
  dataHora: string;
  tipo: 'entrada' | 'saida';
  valor: number;
  descricao: string;
  origem: 'caixa' | 'externo' | 'cofre';
}

@Entity('cofre')
export class Cofre {
  @PrimaryGeneratedColumn()
  id?: number;

  @Column({ type: 'decimal', precision: 10, scale: 2, default: 0 })
  saldo?: number;

  // Armazena as movimentações como JSON. 
  // Caso seu BD não suporte o tipo 'json', altere para 'text' ou 'longtext'.
  @Column({ type: 'json', nullable: true })
  movimentacoes?: MovimentacaoCofre[];

  @CreateDateColumn()
  data_criacao?: Date;

  @UpdateDateColumn()
  data_atualizacao?: Date;
}