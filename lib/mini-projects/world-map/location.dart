import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  void getData() async {

    // await is useful for if a data depends on another

    // simulate network request for a username
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'yoshi';
    });

    // simulate a network request to get the bio of that username
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'vegan, musician & egg collector';
    });

    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('hey there!'); // doesnt wait for the async func cos its out of its scope
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 152, 212, 255),
        title: const Text("Choose a Location"),
      ),
    );
  }
}
