import 'package:fuchsia_logger/logger.dart';

import 'logger_base.dart';

class Logger extends LoggerBase {

  const Logger(String tag) : super(tag);

  @override
  void log(String message) {
    log.info('$tag, message');
  }
}
