import { WebPlugin } from '@capacitor/core';
import { CapIcloudBackupPlugin } from './definitions';

export class CapIcloudBackupWeb extends WebPlugin implements CapIcloudBackupPlugin {
  constructor() {
    super({
      name: 'CapIcloudBackup',
      platforms: ['web']
    });
  }

  async echo(options: { value: string }): Promise<{value: string}> {
    console.log('ECHO', options);
    return options;
  }
}

const CapIcloudBackup = new CapIcloudBackupWeb();

export { CapIcloudBackup };

import { registerWebPlugin } from '@capacitor/core';
registerWebPlugin(CapIcloudBackup);
