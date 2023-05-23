import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:is_ios_app_on_mac/is_ios_app_on_mac_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelIsIosAppOnMac platform = MethodChannelIsIosAppOnMac();
  const MethodChannel channel = MethodChannel('is_ios_app_on_mac');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.isiOSAppOnMac(), false);
  });
}
