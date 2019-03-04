import 'package:fuchsia_logger/logger.dart' as fuchsia_logger;

import 'logger_base.dart';

class Logger extends LoggerBase {
  Logger(String tag) : super(tag) {
    fuchsia_logger.setupLogger(name: tag);
  }

  @override
  void log(String message) {
    fuchsia_logger.log.info('$message');
  }
}
