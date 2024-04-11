import 'dart:async';

import 'package:flutter/material.dart';

class WorldMap extends StatefulWidget {
  const WorldMap({super.key});

  @override
  State<WorldMap> createState() => _WorldMapState();
}

class _WorldMapState extends State<WorldMap> {
  Map data = {};
  late Timer timer;

  @override
  // void initState() {
  //   super.initState();
  //   // Initialize the timer to update the time every second
  //   timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
  //     setState(() {
  //       print(data['time']);
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty
        ? data
        : ModalRoute.of(context)!.settings.arguments as Map;
    print(data);

    // set bg
    Color textcolor = data["isDayTime"] ? Colors.black : Colors.white;
    String bgImage = data["isDayTime"]
        ? "lib/Assets/Images/day.jpg"
        : "lib/Assets/Images/night.jpg";
    return Scaffold(
      //appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(bgImage), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
          child: Column(
            children: <Widget>[
              ElevatedButton.icon(
                  onPressed: () async {
                    dynamic result =
                        await Navigator.pushNamed(context, 'location');
                    setState(() {
                      data = {
                        "location": result["location"],
                        "flag": result["flag"],
                        "time": result["time"],
                        "day": result["day"],
                        "isDayTime": result["isDayTime"]
                      };
                    });
                  },
                  icon: const Icon(Icons.edit_location),
                  label: const Text('Edit Location')),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data['location'],
                    style: TextStyle(
                        fontSize: 28.0, letterSpacing: 2.0, color: textcolor),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Text(data['day'],
                  style: TextStyle(fontSize: 22.0, color: textcolor)),
              const SizedBox(height: 2.0),
              Text(data['time'],
                  style: TextStyle(
                      color: textcolor,
                      fontSize: 66.0,
                      fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ),
    );
  }

  // @override
  // void dispose() {
  //   timer.cancel();
  //   super.dispose();
  // }
}
