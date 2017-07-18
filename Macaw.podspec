Pod::Spec.new do |s|
  s.name             = "Macaw"
  s.version          = "0.8.2"
  s.summary          = "Powerful and easy-to-use vector graphics library with SVG support written in Swift."
  s.homepage         = 'https://github.com/exyte/Macaw.git'
  s.license          = 'MIT'
  s.author           = { 'Igor Zapletnev' => 'igor.zapletnev@gmail.com' }
  s.source           = { :path => './Source' }
  s.social_media_url = 'http://exyte.com'

  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.0' }

  s.source_files = [
     'Source/**/*.*'
  ]
  s.dependency 'SWXMLHash', '~> 3.0.0'
end
