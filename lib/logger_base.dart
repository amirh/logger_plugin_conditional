abstract class LoggerBase {
  const LoggerBase(this.tag);

  final String tag;

  void log(String message);
}