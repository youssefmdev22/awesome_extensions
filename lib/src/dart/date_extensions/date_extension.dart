extension DateOnlyCompare on DateTime {
  bool get isToday {
    DateTime nowDate = .now();
    return year == nowDate.year && month == nowDate.month && day == nowDate.day;
  }

  bool get isYesterday {
    DateTime nowDate = .now();
    Duration oneDay = .new(days: 1);
    return nowDate.subtract(oneDay).isSameDate(this);
  }

  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  bool isSameMonth(DateTime other) {
    return year == other.year && month == other.month;
  }

  bool isSameYear(DateTime other) {
    return year == other.year;
  }
}
