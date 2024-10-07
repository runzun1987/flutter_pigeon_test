import 'package:pigeon/pigeon.dart';

class GDGMessage {
  String? platform;
  String? date;
  int? passedParameter;
  bool? isGDGAwesome;
}

@ConfigurePigeon(PigeonOptions(
  dartOut: 'lib/messages.dart',
  dartTestOut: 'test/messages.dart',
  objcHeaderOut: "ios/Classes/messages.h",
  objcSourceOut: "ios/Classes/messages.m",
  objcOptions: ObjcOptions(
    prefix: "FLT",
  ),
  javaOut: "android/src/main/java/dev/moody/calculator/messages.java",
  javaOptions: JavaOptions(
    package: "dev.moody.calculator",
  ),
))
@HostApi(dartHostTestHandler: "TestCalculatorApi")
abstract class CalculatorApi {
  GDGMessage getCalculation(int passedParameter);
  bool isWorking();
}
