// This is a basic Flutter integration test.
//
// Since integration tests run in a full Flutter application, they can interact
// with the host side of a plugin implementation, unlike Dart unit tests.
//
// For more information about Flutter integration tests, please see
// https://docs.flutter.dev/cookbook/testing/integration/introduction

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:is_ios_app_on_mac/is_ios_app_on_mac.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('isiOSAppOnMac test', (WidgetTester tester) async {
    final IsIosAppOnMac plugin = IsIosAppOnMac();
    final bool version = await plugin.isiOSAppOnMac();
    // The version string depends on the host platform running the test, so
    // just assert that some non-empty string is returned.
    expect(version, true);
  });
}
