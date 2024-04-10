import 'package:flutter/material.dart';

class BasicLayoutLesson extends StatelessWidget {
  const BasicLayoutLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // responsible for displaying the current screen
      appBar: AppBar(
        // Represents the NavBar
        title: const Text(
          " Required Actions",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        foregroundColor: const Color.fromARGB(237, 255, 255, 255),
        // leading: IconButton(
        //   // this is for icons on the left side
        //   onPressed: () {},
        //   icon: const Icon(Icons.home),
        //   color: const Color.fromARGB(255, 232, 232, 232),
        // ),
        // actions: [
        //   // this is for icons on the right side
        //   IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.more_vert_outlined),
        //     color: Colors.white,
        //   ),
        //   IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.notification_add),
        //     color: const Color.fromARGB(255, 255, 59, 59),
        //   ),
        // ],

        backgroundColor: Colors.black,
        centerTitle: true,
      ), // like the nav bar
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        const Column(
          children: [
            Text(" hERE"),
            Text(" hERE"),
            Text(" hERE"),
          ],
        ),
        const Column(
          children: [
            Text(" hERE"),
            Text(" hERE"),
            Text(" hERE"),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("cREATE hERE"),
            Text("cREATE hERE"),
            Text("cREATE hERE"),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("cREATE hERE"),
            Text("cREATE hERE"),
            Text("cREATE hERE"),
          ],
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.end, // goes against the grain
          children: [
            Text("hERE"),
            Text("hERE"),
            Text("hERE"),
          ],
        ),
        const Column(
          children: [
            Text("hERE"),
            Text("hERE"),
            Text("hERE"),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "datepicker");
          },
          child: const Text("Date Picker"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "dropdowns");
          },
          child: const Text("Dropdowns"),
        )
      ]),
    );
  }
}
