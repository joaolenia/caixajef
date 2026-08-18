import { Controller, Get, Post, Body, Patch, Param, ParseIntPipe, Delete } from '@nestjs/common';
import { FichasService } from './fichas.service';
import { Ficha } from './entitites/fichas.entity';

@Controller('fichas')
export class FichasController {
  constructor(private readonly fichasService: FichasService) {}

  @Post()
  async create(@Body() dadosFicha: Partial<Ficha>) {
    return await this.fichasService.create(dadosFicha);
  }

  @Get()
  async findAll() {
    return await this.fichasService.findAll();
  }

  @Get(':id')
  async findOne(@Param('id', ParseIntPipe) id: number) {
    return await this.fichasService.findOne(id);
  }
    @Delete(':id')
  async delete(@Param('id', ParseIntPipe) id: number) {
    return await this.fichasService.delete(id);
  }

  // Usamos Patch para atualização parcial (apenas enviando os arrays de pagamentos e os valores modificados)
  @Patch(':id')
  async update(
    @Param('id', ParseIntPipe) id: number,
    @Body() dadosAtualizacao: Partial<Ficha>,
  ) {
    return await this.fichasService.update(id, dadosAtualizacao);
  }
  @Get('busca/:nome')
  async findByClienteNome(@Param('nome') nome: string) {
    return await this.fichasService.findByClienteNome(nome);
  }
}