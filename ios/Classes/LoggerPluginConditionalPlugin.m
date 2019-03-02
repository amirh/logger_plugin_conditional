#import "LoggerPluginConditionalPlugin.h"

@implementation LoggerPluginConditionalPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"logger_plugin"
            binaryMessenger:[registrar messenger]];
  LoggerPluginConditionalPlugin* instance = [[LoggerPluginConditionalPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"log" isEqualToString:call.method]) {
    NSDictionary* args = call.arguments;
    NSLog(@"TAG: %@, %@", args[@"tag"], args[@"message"]);
    result(nil);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
