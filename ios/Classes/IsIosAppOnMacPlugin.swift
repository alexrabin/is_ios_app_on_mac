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
    case "checkPlatform":
      result(isiOSAppOnMac())
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
}
