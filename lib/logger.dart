import 'package:logger/logger.dart';

class LoggerClass {
  final logger = Logger(
    filter: null,
    output: null,
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 2,
      lineLength: 50,
      colors: true,
      printEmojis: true,
      printTime: false,
    ),
  );
}
