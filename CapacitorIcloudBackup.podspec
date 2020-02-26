
  Pod::Spec.new do |s|
    s.name = 'CapacitorIcloudBackup'
    s.version = '0.0.1'
    s.summary = 'A plugin to  exclude a File from Backups on iOS 5.1 and later (Swift)'
    s.license = 'GPL v3'
    s.homepage = 'https://github.com/byrdsandbytes/capacitor-icloud-backup.git'
    s.author = 'Jonathan Gerber / Byrds & Byres GmbH'
    s.source = { :git => 'https://github.com/byrdsandbytes/capacitor-icloud-backup.git', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '11.0'
    s.dependency 'Capacitor'
  end