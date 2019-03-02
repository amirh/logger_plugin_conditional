import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_plugin_conditional/logger_plugin_conditional.dart';

void main() {
  const MethodChannel channel = MethodChannel('logger_plugin');

  test('log', () async {
    String tag;
    String message;
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      final Map<String, dynamic> args = Map<String, dynamic>.from(methodCall.arguments);
      tag = args['tag'];
      message = args['message'];
    });

    Logger logger = Logger('my_tag');
    logger.log('hello');

    expect(tag, 'my_tag');
    expect(message, 'hello');
  });
}
