import 'package:calculator/messages.dart';

import 'calculator_platform_interface.dart';

class Calculator {
  Future<GDGMessage?> getCalculation(int passedParameter) async {
    return CalculatorPlatform.instance.getCalculation(passedParameter);
  }

  Future<bool?> isWorking() async {
    return CalculatorPlatform.instance.isWorking();
  }
}
