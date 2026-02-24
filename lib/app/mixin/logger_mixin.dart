import 'package:logger/logger.dart';

mixin LoggerMixin {
  Logger get logger => Logger(printer: PrettyPrinter());

  String get className => runtimeType.toString();

  void logInfo(String message) {
    logger.i("[$className] $message");
  }
}
