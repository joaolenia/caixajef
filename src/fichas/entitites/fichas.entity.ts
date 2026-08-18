import { 
  Entity, 
  PrimaryGeneratedColumn, 
  Column, 
  CreateDateColumn, 
  UpdateDateColumn 
} from 'typeorm';

@Entity('fichas')
export class Ficha {
  @PrimaryGeneratedColumn()
  id?: number;

  @Column({ name: 'cliente_nome', type: 'varchar', length: 255 })
  clienteNome?: string;

  // JSON contendo o histórico de compras em aberto (Data, Resumo, Valor)
  @Column({ type: 'json' })
  compras?: any[];

  // JSON contendo o histórico de pagamentos parciais ou integrais
  @Column({ type: 'json', nullable: true })
  pagamentos?: any[];

  // Somatório do valor de todas as compras
  @Column({ name: 'valor_total', type: 'decimal', precision: 10, scale: 2, default: 0 })
  valorTotal?: number;

  // Somatório do valor que já foi pago
  @Column({ name: 'valor_pago', type: 'decimal', precision: 10, scale: 2, default: 0 })
  valorPago?: number;

  // Controle rápido para saber se a ficha ainda tem saldo devedor
  @Column({ type: 'varchar', length: 20, default: 'ABERTA' }) // 'ABERTA' ou 'PAGA'
  status?: string;

  @CreateDateColumn({ name: 'data_criacao' })
  dataCriacao?: Date;

  @UpdateDateColumn({ name: 'data_atualizacao' })
  dataAtualizacao?: Date;
}