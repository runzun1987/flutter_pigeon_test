import 'package:calculator/messages.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'calculator_platform_interface.dart';

class MethodChannelCalculator extends CalculatorPlatform {
  final _api = CalculatorApi();

  @override
  Future<GDGMessage?> getCalculation(int passedParameter) async {
    final result = await _api.getCalculation(passedParameter);
    return result;
  }

  @override
  Future<bool?> isWorking() async {
    final result = await _api.isWorking();
    return result;
  }
}
