import 'package:intl/intl.dart';

import 'package:practiceapp/imports.dart';

class WorldTime {
  String location;
  String? time;
  String flag;
  String url;

  WorldTime(
      {required this.flag,
      required this.location,
      this.time,
      required this.url});

  final Dio _dio = Dio();

  Future<void> getTime() async {
    // Future needed, its a temporary placeholder value that lets dart know when an async fun is complete
    try {
      // make request
      final response =
          await _dio.get("http://worldtimeapi.org/api/timezone/$url");
      final Map data = response.data;
      // print(data);

      // get data from properties
      String datetime = data["datetime"];
      String offset = data["utc_offset"].substring(1, 3);

      // create datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      print(now);
      // set time property
      // time = DateFormat('yyyy-MM-dd HH:mm:ss').format(now);
      time = DateFormat.jm().format(now);
      print(time);
    } catch (e) {
      print("Error fetching data: $e");
      time = "Sorry, couldn't get the time";
    }
  }
}
