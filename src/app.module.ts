import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { VendasModule } from './vendas/vendas.module';
import { TypeOrmModule } from '@nestjs/typeorm';
import {Venda} from './vendas/entities/venda.entity'


@Module({
  imports: [
     TypeOrmModule.forRoot({
      type: 'mysql',
      host: 'localhost',
      port: 3306,
      username: 'root',       // Seu usuário do MySQL local
      password: '1234567',    // Sua senha do MySQL local
      database: 'caixa_db', // Nome do banco de dados que você criou
      entities: [Venda], // Adicione a entidade Venda aqui
      synchronize: true,      // ATENÇÃO: Use 'true' apenas em desenvolvimento para criar as tabelas automaticamente
    }),
    VendasModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
