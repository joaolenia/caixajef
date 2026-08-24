import { Controller, Get, Post, Body } from '@nestjs/common';
import { CofreService } from './cofre.service';

@Controller('cofre')
export class CofreController {
  constructor(private readonly cofreService: CofreService) {}

  // Retorna os dados completos do cofre (saldo e movimentações)
  @Get()
  async getCofre() {
    return this.cofreService.getCofre();
  }

  // Cria uma nova movimentação (entrada ou saída)
  @Post('movimentacao')
  async registrarMovimentacao(
    @Body() body: { 
      tipo: 'entrada' | 'saida'; 
      valor: number; 
      descricao: string; 
      origem: 'caixa' | 'externo' | 'cofre';
    },
  ) {
    const { tipo, valor, descricao, origem } = body;
    return this.cofreService.adicionarMovimentacao(tipo, valor, descricao, origem);
  }
}