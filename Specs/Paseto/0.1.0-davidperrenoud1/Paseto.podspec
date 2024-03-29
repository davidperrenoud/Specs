Pod::Spec.new do |s|
  s.name             = 'Paseto'
  s.version          = '0.1.0-davidperrenoud1'
  s.summary          = 'A short description of Paseto.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/David Perrenoud/Paseto'
  s.author           = { 'David Perrenoud' => 'david.perrenoud@ti8m.ch' }
  s.source           = { :git => 'https://github.com/davidperrenoud/swift-paseto.git' }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Sources/Paseto/**/*', 'include/libsodium/*'
  
  s.dependency 'Sodium', '0.7.0-davidperrenoud1'
  
  # Add Clibsodium needed for AEAD nonce parameter
  s.ios.vendored_library    = 'include/libsodium/libsodium-paseto-ios.a'
  s.private_header_files = 'include/libsodium/*.h'
  s.preserve_paths = 'include/libsodium/module.modulemap'
  s.pod_target_xcconfig = {
  	'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/include/libsodium',
  }
  s.swift_version = '5.0'
end
