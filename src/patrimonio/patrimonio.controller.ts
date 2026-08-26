import { Controller, Get, Post, Body } from '@nestjs/common';
import { PatrimonioService } from './patrimonio.service';

// DTOs (Data Transfer Objects) simples para tipar o body da requisição
export class MovimentacaoDto {
  valor!: number;
  descricao!: string;
  tipo?: 'entrada' | 'sangria'; // Usado apenas na rota de entrada
}

@Controller('patrimonio')
export class PatrimonioController {
  constructor(private readonly patrimonioService: PatrimonioService) {}

  // GET /patrimonio -> Visualizar Detalhes
  @Get()
  async getPatrimonio() {
    return this.patrimonioService.visualizarDetalhes();
  }

  // POST /patrimonio/entrada -> Colocar Dinheiro (Entrada padrão ou Sangria)
  @Post('entrada')
  async colocarDinheiro(@Body() body: MovimentacaoDto) {
    const tipo = body.tipo || 'entrada';
    return this.patrimonioService.colocarDinheiro(body.valor, body.descricao, tipo);
  }

  // POST /patrimonio/saida -> Tirar Dinheiro
  @Post('saida')
  async tirarDinheiro(@Body() body: MovimentacaoDto) {
    return this.patrimonioService.tirarDinheiro(body.valor, body.descricao);
  }
}