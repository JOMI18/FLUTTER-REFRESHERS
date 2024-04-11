import 'package:flutter/material.dart';
import 'package:practiceapp/imports.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // final Dio _dio = Dio();

  // void getData() async {
  //   try {
  //     final response =
  //         await _dio.get("https://jsonplaceholder.typicode.com/todos/1");
  //     final Map<String, dynamic> data = response.data;
  //     print(data);
  //   } catch (e) {
  //     print("Error fetching data: $e");
  //   }
  // }

  // void getTime() async {
  //   try {
  //     // make request
  //     final response =
  //         await _dio.get("http://worldtimeapi.org/api/timezone/Africa/Lagos");
  //     final Map data = response.data;
  //     // print(data);
  //     // get data from properties
  //     String datetime = data["datetime"];
  //     // print(datetime);
  //     String offset = data["utc_offset"].substring(1, 3);
  //     print(offset);
  //     // create datetime object
  //     DateTime now = DateTime.parse(datetime);
  //   //  now.add(Duration(hours: int.parse(offset))); // this is disruptive and wont be automatically saved  and updated
  //     now = now.add(Duration(hours: int.parse(offset)));
  //     print(now);
  //   } catch (e) {
  //     print("Error fetching data: $e");
  //   }
  // }

  // making it reusable

  String time = 'loading';

  void setupWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'Nigeria',
        flag: 'lib/Assets/Images/nigeria.png',
        url: 'Africa/Lagos');
    await instance.getTime();
    print(instance.time);

    Navigator.pushReplacementNamed(context, "maps", arguments: {
      "location": instance.location,
      "flag": instance.flag,
      "time": instance.time,
      "day": instance.day,
      "isDayTime": instance.isDayTime
    });

    // setState(() {
    //   time = instance.time!;
    // });
  }

  @override
  void initState() {
    super.initState();
    // getData();
    // getTime();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blueGrey.shade900,
        title: const Text(
          "Welcome to World Map",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 26),
        ),
      ),
      backgroundColor: Colors.blueGrey.shade900,
      body: const Padding(
        padding: EdgeInsets.all(25.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircularProgressIndicator(
                color: Colors.white,
              ),
              Text(
                "Please wait, Data Loading...",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 22),
              )
            ],
          ),
        ),
      ),
    );
  }
}
