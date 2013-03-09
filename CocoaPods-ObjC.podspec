Pod::Spec.new do |s|
  s.name         = "CocoaPods-objc"
  s.version      = "0.0.1"
  s.summary      = "Provides support for working with CocoaPods."
  s.homepage     = "http://EXAMPLE/CocoaPods-Core"
  s.license      = 'MIT'
  s.author       = "The CocoaPods team"
  s.source       = { :git => "http://EXAMPLE/CocoaPods-Core.git", :tag => "0.0.1" }
  s.platform     = :osx, '10.8'

  s.source_files = 'Classes/**/*.{h,m}'
  s.requires_arc = true

  s.dependency 'YAML.framework', '~> 0.0.1'
  s.dependency 'DSUnixTask',     '~> 0.1.0'
end
