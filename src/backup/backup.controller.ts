import { Controller, Post, Body, UnauthorizedException } from '@nestjs/common';
import { BackupService } from './backup.service';

@Controller('backup')
export class BackupController {
  constructor(private readonly backupService: BackupService) {}

  @Post('local')
  async fazerBackupLocal() {

    const filePath = await this.backupService.gerarBackupLocal();

    return { 
      success: true, 
      message: 'Backup gerado com sucesso no servidor!',
      caminho: filePath
    };
  }
}