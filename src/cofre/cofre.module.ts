import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CofreController } from './cofre.controller';
import { CofreService } from './cofre.service';
import { Cofre } from './entities/cofre.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Cofre])],
  controllers: [CofreController],
  providers: [CofreService],
  exports: [CofreService],
})
export class CofreModule {}