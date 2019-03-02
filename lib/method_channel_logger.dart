import 'package:flutter/services.dart';

import 'logger_base.dart';

class Logger extends LoggerBase {
  static const MethodChannel _channel = const MethodChannel('logger_plugin');

  const Logger(String tag) : super(tag);

  @override
  void log(String message) {
    _channel.invokeMethod('log',<String, dynamic> {
      'tag': tag,
      'message': message,
    });
  }
}