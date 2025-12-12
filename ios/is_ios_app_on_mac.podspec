#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint is_ios_app_on_mac.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'is_ios_app_on_mac'
  s.version          = '0.0.2'
  s.summary          = 'This plugin checks to see if your iOS app is being run on an Apple Silicon Mac or VisionOS.'
  s.description      = <<-DESC
This plugin checks to see if your iOS app is being run on an Apple Silicon Mac or VisionOS.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'is_ios_app_on_mac/Sources/is_ios_app_on_mac/**/*.swift'
  s.dependency 'Flutter'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # If your plugin requires a privacy manifest, for example if it uses any
  # required reason APIs, update the PrivacyInfo.xcprivacy file to describe your
  # plugin's privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  s.resource_bundles = {'is_ios_app_on_mac_privacy' => ['is_ios_app_on_mac/Sources/is_ios_app_on_mac/PrivacyInfo.xcprivacy']}
end
