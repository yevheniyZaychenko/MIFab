Pod::Spec.new do |spec|
  spec.name             = 'MIFab'
  spec.version          = '1.0'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.homepage         = 'https://github.com/MarioIannotta/MIFab'
  spec.authors          = { 'Mario Iannotta' => 'info@marioiannotta.com' }
  spec.summary          = 'A simple fully customizable floating action button with options'
  spec.source           = { :git => 'https://github.com/MarioIannotta/MIFab.git', :tag => spec.version.to_s }
  spec.source_files     = 'MIFab/**/*'
  spec.ios.deployment_target = '9.0'
end