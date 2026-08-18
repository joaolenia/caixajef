import { Controller, Get, Post, Body, Param, ParseIntPipe } from '@nestjs/common';
import { VendasService } from './vendas.service';
import { Venda } from './entities/venda.entity';

@Controller('vendas')
export class VendasController {
  constructor(private readonly vendasService: VendasService) {}

  // Rota: POST /vendas
  // Pega o JSON do body e joga direto pro service criar a venda
  @Post()
  async create(@Body() dadosVenda: Partial<Venda>) {
    return await this.vendasService.create(dadosVenda);
  }

  // Rota: GET /vendas
  @Get()
  async findAll() {
    return await this.vendasService.findAll();
  }

  // Rota: GET /vendas/:id (ex: /vendas/5)
  @Get(':id')
  async findOne(@Param('id', ParseIntPipe) id: number) {
    return await this.vendasService.findOne(id);
  }
}