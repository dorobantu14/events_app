import 'package:intl/intl.dart';

extension DateTimeExtention on String {
  String get dayMonthYearFormat =>
      DateFormat('d MMM y').format(DateTime.parse(this));
}
