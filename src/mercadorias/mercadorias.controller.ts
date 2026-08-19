import { 
  Controller, 
  Get, 
  Post, 
  Body, 
  Patch, 
  Param, 
  Delete,
  HttpCode,
  HttpStatus
} from '@nestjs/common';
import { MercadoriasService } from './mercadorias.service';
import { MercadoriaOperacao } from './entities/mercadorias.entity';

@Controller('mercadorias')
export class MercadoriasController {
  constructor(private readonly mercadoriasService: MercadoriasService) {}

  @Post()
  @HttpCode(HttpStatus.CREATED)
  create(@Body() data: Partial<MercadoriaOperacao>) {
    return this.mercadoriasService.create(data);
  }

  @Get()
  findAll() {
    return this.mercadoriasService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.mercadoriasService.findOne(+id); 
  }

  @Patch(':id')
  update(
    @Param('id') id: string, 
    @Body() data: Partial<MercadoriaOperacao>
  ) {
    return this.mercadoriasService.update(+id, data);
  }

  @Delete(':id')
  @HttpCode(HttpStatus.NO_CONTENT)
  remove(@Param('id') id: string) {
    return this.mercadoriasService.remove(+id);
  }
}