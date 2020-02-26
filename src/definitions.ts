declare module "@capacitor/core" {
  interface PluginRegistry {
    CapIcloudBackup: CapIcloudBackupPlugin;
  }
}

export interface CapIcloudBackupPlugin {
  echo(options: { value: string }): Promise<{value: string}>;
}
