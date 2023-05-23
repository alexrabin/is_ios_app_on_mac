import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'is_ios_app_on_mac_platform_interface.dart';

/// An implementation of [IsIosAppOnMacPlatform] that uses method channels.
class MethodChannelIsIosAppOnMac extends IsIosAppOnMacPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('is_ios_app_on_mac');

  @override
  Future<bool> isiOSAppOnMac() async {
    if (!Platform.isIOS) {
      return false;
    }
    try {
      final value = await methodChannel.invokeMethod<bool>('checkPlatform');
      return value ?? false;
    } catch (e) {
      return false;
    }
  }
}
