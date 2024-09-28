import 'package:logger/logger.dart';

class ConsoleLogger {
  ConsoleLogger._();

  static var logger = Logger(printer: PrettyPrinter(methodCount: 0, errorMethodCount: 2, lineLength: 50));
}
