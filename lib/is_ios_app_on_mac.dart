import 'is_ios_app_on_mac_platform_interface.dart';

class IsIosAppOnMac {
  static Future<bool> isiOSAppOnMac() {
    return IsIosAppOnMacPlatform.instance.isiOSAppOnMac();
  }

  static Future<bool> isiOSAppOnVision() {
    return IsIosAppOnMacPlatform.instance.isiOSAppOnVision();
  }
}
