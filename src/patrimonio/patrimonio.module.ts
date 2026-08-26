import { Module } from '@nestjs/common';
import { PatrimonioService } from './patrimonio.service';
import { PatrimonioController } from './patrimonio.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Patrimonio } from './entities/patrimonio.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Patrimonio])],
  controllers: [PatrimonioController],
  providers: [PatrimonioService],
})
export class PatrimonioModule {}
