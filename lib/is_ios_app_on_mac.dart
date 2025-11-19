import 'is_ios_app_on_mac_platform_interface.dart';

class IsIosAppOnMac {
  Future<bool> isiOSAppOnMac() {
    return IsIosAppOnMacPlatform.instance.isiOSAppOnMac();
  }

  Future<bool> isiOSAppOnVision() {
    return IsIosAppOnMacPlatform.instance.isiOSAppOnVision();
  }
}
