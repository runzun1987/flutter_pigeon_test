import 'package:calculator/messages.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'calculator_method_channel.dart';

abstract class CalculatorPlatform extends PlatformInterface {
  /// Constructs a CalculatorPlatform.
  CalculatorPlatform() : super(token: _token);

  static final Object _token = Object();

  static CalculatorPlatform _instance = MethodChannelCalculator();

  /// The default instance of [CalculatorPlatform] to use.
  ///
  /// Defaults to [MethodChannelCalculator].
  static CalculatorPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CalculatorPlatform] when
  /// they register themselves.
  static set instance(CalculatorPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<GDGMessage?> getCalculation(int passedParameter) {
    throw UnimplementedError('getCalculation() has not been implemented.');
  }

  Future<bool?> isWorking() {
    throw UnimplementedError('isWorking() has not been implemented.');
  }
}
