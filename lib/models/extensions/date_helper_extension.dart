import 'package:intl/intl.dart';

extension DateHelperExtension on DateTime {
  static final DateFormat format = DateFormat("yyyy-MM-dd");

  bool isToday() {
    final now = DateTime.now();
    return now.day == this.day &&
        now.month == this.month &&
        now.year == this.year;
  }

  bool isTomorrow() {
    final yesterday = DateTime.now().add(Duration(days: 1));
    return yesterday.day == this.day &&
        yesterday.month == this.month &&
        yesterday.year == this.year;
  }

  String toDateString() {
    return format.format(this);
  }
}
