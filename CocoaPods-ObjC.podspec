Pod::Spec.new do |s|
  s.name         = "CocoaPods-objc"
  s.version      = "0.39.0"
  s.summary      = "Provides support for working with CocoaPods."
  s.homepage     = "https://github.com/CocoaPods/CocoaPods-objc"
  s.social_media_url = "https://twitter.com/CocoaPods"
  s.license      = 'MIT'
  s.author       = "The CocoaPods Team"
  s.source       = { :git => "https://github.com/CocoaPods/CocoaPods-objc.git", :tag => "0.39.0" }
  s.platform     = :osx, '10.8'

  s.source_files = 'Classes/**/*.{h,m}'
  s.requires_arc = true

  s.dependency 'YAML-Framework'
  s.dependency 'DSUnixTask',     '~> 0.1.0'
end
