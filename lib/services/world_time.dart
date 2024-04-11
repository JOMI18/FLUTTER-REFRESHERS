import 'dart:async';
import 'package:intl/intl.dart';
import 'package:practiceapp/imports.dart';

class WorldTime {
  String location;
  String? time;
  String? day;
  String flag;
  String url;
  bool? isDayTime;

  WorldTime(
      {required this.flag,
      required this.location,
      this.time,
      this.day,
      this.isDayTime,
      required this.url});

  final Dio _dio = Dio();
  // late Timer _timer;

  Future<void> getTime() async {
    // Future needed, its a temporary placeholder value that lets dart know when an async fun is complete
    // _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) async {
    try {
      // make request
      final response =
          await _dio.get("http://worldtimeapi.org/api/timezone/$url");
      final Map data = response.data;
      print(data);

      // get data from properties
      String datetime = data["datetime"];
      String offset = data["utc_offset"].substring(0, 3);

      // create datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      print(now);

      // set time property
      day = _formatDay(now);
      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
      print(time);
    } catch (e) {
      print("Error fetching data: $e");
      time = "Sorry, couldn't get the time";
    }
    // });
  }

  String _formatDay(DateTime dateTime) {
    // Format the day with the appropriate suffix
    String dayOfMonth = DateFormat('d').format(dateTime);
    String monthInWords = DateFormat('MMMM').format(dateTime); // Month in words

    // Lowercase m: Represents the minute with leading zeros (e.g., "01", "59").
    // Uppercase M: Represents the month as a number without leading zeros (e.g., "1" for January, "12" for December).
    // If you want to get the month in words, you should use uppercase MMMM, which represents the full month name

    String year = DateFormat('yyyy').format(dateTime); // Year

    if (dayOfMonth.endsWith('1') && dayOfMonth != '11') {
      return '${dayOfMonth}th $monthInWords $year';
    } else if (dayOfMonth.endsWith('2') && dayOfMonth != '12') {
      return '${dayOfMonth}nd $monthInWords $year';
    } else if (dayOfMonth.endsWith('3') && dayOfMonth != '13') {
      return '${dayOfMonth}rd $monthInWords $year';
    } else {
      return '${dayOfMonth}th $monthInWords $year';
    }
  }
}
