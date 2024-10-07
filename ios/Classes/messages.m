// Autogenerated from Pigeon (v22.4.2), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import "messages.h"

#if TARGET_OS_OSX
#import <FlutterMacOS/FlutterMacOS.h>
#else
#import <Flutter/Flutter.h>
#endif

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSArray<id> *wrapResult(id result, FlutterError *error) {
  if (error) {
    return @[
      error.code ?: [NSNull null], error.message ?: [NSNull null], error.details ?: [NSNull null]
    ];
  }
  return @[ result ?: [NSNull null] ];
}

static id GetNullableObjectAtIndex(NSArray<id> *array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}

@interface FLTGDGMessage ()
+ (FLTGDGMessage *)fromList:(NSArray<id> *)list;
+ (nullable FLTGDGMessage *)nullableFromList:(NSArray<id> *)list;
- (NSArray<id> *)toList;
@end

@implementation FLTGDGMessage
+ (instancetype)makeWithPlatform:(nullable NSString *)platform
    date:(nullable NSString *)date
    passedParameter:(nullable NSNumber *)passedParameter
    isGDGAwesome:(nullable NSNumber *)isGDGAwesome {
  FLTGDGMessage* pigeonResult = [[FLTGDGMessage alloc] init];
  pigeonResult.platform = platform;
  pigeonResult.date = date;
  pigeonResult.passedParameter = passedParameter;
  pigeonResult.isGDGAwesome = isGDGAwesome;
  return pigeonResult;
}
+ (FLTGDGMessage *)fromList:(NSArray<id> *)list {
  FLTGDGMessage *pigeonResult = [[FLTGDGMessage alloc] init];
  pigeonResult.platform = GetNullableObjectAtIndex(list, 0);
  pigeonResult.date = GetNullableObjectAtIndex(list, 1);
  pigeonResult.passedParameter = GetNullableObjectAtIndex(list, 2);
  pigeonResult.isGDGAwesome = GetNullableObjectAtIndex(list, 3);
  return pigeonResult;
}
+ (nullable FLTGDGMessage *)nullableFromList:(NSArray<id> *)list {
  return (list) ? [FLTGDGMessage fromList:list] : nil;
}
- (NSArray<id> *)toList {
  return @[
    self.platform ?: [NSNull null],
    self.date ?: [NSNull null],
    self.passedParameter ?: [NSNull null],
    self.isGDGAwesome ?: [NSNull null],
  ];
}
@end

@interface FLTMessagesPigeonCodecReader : FlutterStandardReader
@end
@implementation FLTMessagesPigeonCodecReader
- (nullable id)readValueOfType:(UInt8)type {
  switch (type) {
    case 129: 
      return [FLTGDGMessage fromList:[self readValue]];
    default:
      return [super readValueOfType:type];
  }
}
@end

@interface FLTMessagesPigeonCodecWriter : FlutterStandardWriter
@end
@implementation FLTMessagesPigeonCodecWriter
- (void)writeValue:(id)value {
  if ([value isKindOfClass:[FLTGDGMessage class]]) {
    [self writeByte:129];
    [self writeValue:[value toList]];
  } else {
    [super writeValue:value];
  }
}
@end

@interface FLTMessagesPigeonCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation FLTMessagesPigeonCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[FLTMessagesPigeonCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[FLTMessagesPigeonCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *FLTGetMessagesCodec(void) {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    FLTMessagesPigeonCodecReaderWriter *readerWriter = [[FLTMessagesPigeonCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}
void SetUpFLTCalculatorApi(id<FlutterBinaryMessenger> binaryMessenger, NSObject<FLTCalculatorApi> *api) {
  SetUpFLTCalculatorApiWithSuffix(binaryMessenger, api, @"");
}

void SetUpFLTCalculatorApiWithSuffix(id<FlutterBinaryMessenger> binaryMessenger, NSObject<FLTCalculatorApi> *api, NSString *messageChannelSuffix) {
  messageChannelSuffix = messageChannelSuffix.length > 0 ? [NSString stringWithFormat: @".%@", messageChannelSuffix] : @"";
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:[NSString stringWithFormat:@"%@%@", @"dev.flutter.pigeon.calculator.CalculatorApi.getCalculation", messageChannelSuffix]
        binaryMessenger:binaryMessenger
        codec:FLTGetMessagesCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getCalculationPassedParameter:error:)], @"FLTCalculatorApi api (%@) doesn't respond to @selector(getCalculationPassedParameter:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray<id> *args = message;
        NSInteger arg_passedParameter = [GetNullableObjectAtIndex(args, 0) integerValue];
        FlutterError *error;
        FLTGDGMessage *output = [api getCalculationPassedParameter:arg_passedParameter error:&error];
        callback(wrapResult(output, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:[NSString stringWithFormat:@"%@%@", @"dev.flutter.pigeon.calculator.CalculatorApi.isWorking", messageChannelSuffix]
        binaryMessenger:binaryMessenger
        codec:FLTGetMessagesCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(isWorkingWithError:)], @"FLTCalculatorApi api (%@) doesn't respond to @selector(isWorkingWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSNumber *output = [api isWorkingWithError:&error];
        callback(wrapResult(output, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
}