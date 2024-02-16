import 'package:flutter/material.dart';

class WorldMap extends StatelessWidget {
  const WorldMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, "location");
              },
              icon: Icon(Icons.edit_location),
              label: Text("Choose Location"))
        ],
      )),
    );
  }
}
