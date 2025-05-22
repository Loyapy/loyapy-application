import 'package:logger/logger.dart';

final kLog = Logger(
  printer: PrettyPrinter(
    noBoxingByDefault: true,
    dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
    // colors: false,
  ),
);
