import Flutter
import UIKit

public class IsIosAppOnMacPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "is_ios_app_on_mac", binaryMessenger: registrar.messenger())
    let instance = IsIosAppOnMacPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "isiOSAppOnMac":
      result(isiOSAppOnMac())
    case "isiOSAppOnVision":
      result(isiOSAppOnVision())
    default:
      result(FlutterMethodNotImplemented)
    }
  }

  private func isiOSAppOnMac() -> Bool {
      if #available(iOS 14.0, *) {
        return ProcessInfo.processInfo.isiOSAppOnMac
      }
      return false
    }

  private func isiOSAppOnVision() -> Bool {
    if #available(iOS 26.1, *) {
      return ProcessInfo.processInfo.isiOSAppOnVision
    }
    return false
  }
}
