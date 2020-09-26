import 'package:intl/intl.dart';

extension DateHelperExtension on DateTime {
  static final DateFormat format = DateFormat("yyyy-MM-dd");

  //checks if the date is today
  bool isToday() {
    final now = DateTime.now();
    return now.day == this.day &&
        now.month == this.month &&
        now.year == this.year;
  }

  //checks if the date is tomorrow
  bool isTomorrow() {
    final yesterday = DateTime.now().add(Duration(days: 1));
    return yesterday.day == this.day &&
        yesterday.month == this.month &&
        yesterday.year == this.year;
  }

  //converts the date to a formatted string
  String toDateString() {
    return format.format(this);
  }
}
