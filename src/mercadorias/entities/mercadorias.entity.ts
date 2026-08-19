import { 
  Entity, 
  Column, 
  PrimaryGeneratedColumn, 
  CreateDateColumn, 
  UpdateDateColumn 
} from 'typeorm';

@Entity('mercadorias_operacoes')
export class MercadoriaOperacao {
  @PrimaryGeneratedColumn()
  id?: number;

  @Column({ type: 'varchar', length: 255 })
  fornecedorNome?: string;

  @Column({ type: 'decimal', precision: 10, scale: 2 })
  valorNota?: number;

  @Column({ type: 'text', nullable: true })
  descricao?: string;

  @Column({ type: 'decimal', precision: 10, scale: 2, default: 0 })
  valorPagoCaixa?: number;

  @Column({ type: 'decimal', precision: 10, scale: 2, default: 0 })
  valorPagoCofre?: number;

  @Column({ type: 'decimal', precision: 10, scale: 2, default: 0 })
  valorPrazo?: number;

  @Column({ type: 'varchar', length: 30, default: 'pendente' })
  statusGeral?: string;

  @Column({ type: 'date', nullable: true })
  dataOperacao?: Date;

  // CORREÇÃO AQUI: nullable no banco, default na classe do TypeScript
  @Column({ type: 'json', nullable: true })
  parcelas?: ParcelaMercadoria[] = [];

  @CreateDateColumn({ name: 'data_criacao' })
  dataCriacao?: Date;

  @UpdateDateColumn({ name: 'data_atualizacao' })
  dataAtualizacao?: Date;
}

export interface ParcelaMercadoria {
  numero: number;          
  vencimento: string;      
  valor: number;           
  status: 'pendente' | 'pago'; 
  formaPagamento: string;  
  dataPagamento?: string;  
}