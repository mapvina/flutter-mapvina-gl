#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'mapvina_gl'
  s.version          = '1.0.0'
  s.summary          = 'MapVina GL Flutter plugin'
  s.description      = <<-DESC
MapVina GL Flutter plugin.
                       DESC
  s.homepage         = 'https://mapvina.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'MapVina' => 'info@mapvina.com' }
  s.source           = { :path => '.' }
  s.source_files = 'mapvina_gl/Sources/mapvina_gl/**/*'
  s.dependency 'Flutter'
  # The native MapVina dependency is provided via Swift Package Manager
  # (see mapvina_gl/Package.swift). It is intentionally NOT declared as a
  # CocoaPods dependency here to keep a single, unified distribution channel.
  s.swift_version = '5.0'
  s.ios.deployment_target = '13.0'
end

