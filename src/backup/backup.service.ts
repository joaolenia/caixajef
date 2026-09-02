import { Injectable, InternalServerErrorException } from '@nestjs/common';
import { exec } from 'child_process';
import { promisify } from 'util';
import * as path from 'path';
import * as fs from 'fs';

const execAsync = promisify(exec);

@Injectable()
export class BackupService {
  async gerarBackupLocal(): Promise<string> {
    // Ajuste com os dados reais do seu banco
    const dbUser = process.env.DB_USER || 'root';
    const dbPass = process.env.DB_PASS || '1234567'; 
    const dbName = process.env.DB_NAME || 'caixa_db';

    // Cria a pasta "backups" na raiz do seu backend
    const backupDir = path.join(process.cwd(), 'backups');
    if (!fs.existsSync(backupDir)) {
      fs.mkdirSync(backupDir, { recursive: true });
    }

    // Gera um nome único com a data atual formatada (ex: backup_2026-09-01T20-58-12.sql)
    const dataAtual = new Date().toISOString().replace(/[:.]/g, '-');
    const fileName = `backup_mercadobomjesus_${dataAtual}.sql`;
    const filePath = path.join(backupDir, fileName);

    const command = `mysqldump -u ${dbUser} -p${dbPass} ${dbName} > "${filePath}"`;

    try {
      await execAsync(command);
      return filePath;
    } catch (error) {
      console.error('Erro ao gerar backup:', error);
      throw new InternalServerErrorException('Falha ao gravar o arquivo de backup no disco.');
    }
  }
}