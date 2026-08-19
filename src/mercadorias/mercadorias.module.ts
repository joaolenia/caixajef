import { Module } from '@nestjs/common';
import { MercadoriasService } from './mercadorias.service';
import { MercadoriasController } from './mercadorias.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { MercadoriaOperacao } from './entities/mercadorias.entity';

@Module({
    imports: [TypeOrmModule.forFeature([MercadoriaOperacao])],
  controllers: [MercadoriasController],
  providers: [MercadoriasService],
})
export class MercadoriasModule {}
