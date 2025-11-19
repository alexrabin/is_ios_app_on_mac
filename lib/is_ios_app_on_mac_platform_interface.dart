import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'is_ios_app_on_mac_method_channel.dart';

abstract class IsIosAppOnMacPlatform extends PlatformInterface {
  /// Constructs a IsIosAppOnMacPlatform.
  IsIosAppOnMacPlatform() : super(token: _token);

  static final Object _token = Object();

  static IsIosAppOnMacPlatform _instance = MethodChannelIsIosAppOnMac();

  /// The default instance of [IsIosAppOnMacPlatform] to use.
  ///
  /// Defaults to [MethodChannelIsIosAppOnMac].
  static IsIosAppOnMacPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [IsIosAppOnMacPlatform] when
  /// they register themselves.
  static set instance(IsIosAppOnMacPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool> isiOSAppOnMac() {
    throw UnimplementedError('isiOSAppOnMac() has not been implemented.');
  }

  Future<bool> isiOSAppOnVision() {
    throw UnimplementedError('isiOSAppOnVision() has not been implemented.');
  }
}
