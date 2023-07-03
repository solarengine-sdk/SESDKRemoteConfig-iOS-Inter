#
# Be sure to run `pod lib lint SESDKRemoteConfigiOSInter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SESDKRemoteConfigiOSInter'
  s.version          = '1.1.0.0'
  s.summary          = 'Official SESDKRemoteConfig for iOS Inter.'

  s.homepage         = 'https://www.solar-engine.com'
  s.license          =  { :type => "Apache License, Version 2.0" }
  s.author           = { 'sdk@solar-engine.com' => 'sdk@solar-engine.com' }
  s.source           = { :git => 'https://github.com/solarengine-sdk/SESDKRemoteConfig-iOS-Inter.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.vendored_frameworks = 'SESDKRemoteConfigiOSInter/SESDKRemoteConfig.framework'
  #s.dependency 'SolarEngineSDKiOSInter' , '~> 1.2.1.0'
  s.dependency 'SolarEngineSDK' , '~> 1.2.1.0'

  s.requires_arc = true

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
