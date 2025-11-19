import 'package:flutter_test/flutter_test.dart';
import 'package:is_ios_app_on_mac/is_ios_app_on_mac.dart';
import 'package:is_ios_app_on_mac/is_ios_app_on_mac_platform_interface.dart';
import 'package:is_ios_app_on_mac/is_ios_app_on_mac_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockIsIosAppOnMacPlatform
    with MockPlatformInterfaceMixin
    implements IsIosAppOnMacPlatform {
  @override
  Future<bool> isiOSAppOnMac() => Future.value(false);

  @override
  Future<bool> isiOSAppOnVision() => Future.value(false);
}

void main() {
  final IsIosAppOnMacPlatform initialPlatform = IsIosAppOnMacPlatform.instance;

  test('$MethodChannelIsIosAppOnMac is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelIsIosAppOnMac>());
  });

  test('isiOSAppOnMac', () async {
    IsIosAppOnMac isIosAppOnMacPlugin = IsIosAppOnMac();
    MockIsIosAppOnMacPlatform fakePlatform = MockIsIosAppOnMacPlatform();
    IsIosAppOnMacPlatform.instance = fakePlatform;

    expect(await isIosAppOnMacPlugin.isiOSAppOnMac(), false);
  });

  test('isiOSAppOnVision', () async {
    IsIosAppOnMac isIosAppOnMacPlugin = IsIosAppOnMac();
    MockIsIosAppOnMacPlatform fakePlatform = MockIsIosAppOnMacPlatform();
    IsIosAppOnMacPlatform.instance = fakePlatform;

    expect(await isIosAppOnMacPlugin.isiOSAppOnVision(), false);
  });
}
