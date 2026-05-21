#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'mapvina_gl'
  s.version          = '0.26.1'
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
  # When updating the dependency version,
  # make sure to also update the version in Package.swift.
  s.dependency 'MapVina', '6.26.0'
  s.swift_version = '5.0'
  s.ios.deployment_target = '13.0'
end

