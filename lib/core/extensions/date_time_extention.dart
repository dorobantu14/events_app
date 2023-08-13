import 'package:intl/intl.dart';

extension DateTimeExtention on DateTime {
  String get dayMonthYear => DateFormat('d MMM y').format(this);
}
