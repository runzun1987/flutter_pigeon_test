import Flutter
import UIKit

public class CalculatorPlugin: NSObject, FlutterPlugin,FLTCalculatorApi {
    public func getCalculationPassedParameter(_ passedParameter: Int, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) -> FLTGDGMessage? {
        return FLTGDGMessage();
    }
    
    public func isWorkingWithError(_ error: AutoreleasingUnsafeMutablePointer<FlutterError?>) -> NSNumber? {
       return true
    }
    
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "calculator", binaryMessenger: registrar.messenger())
    let instance = CalculatorPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
