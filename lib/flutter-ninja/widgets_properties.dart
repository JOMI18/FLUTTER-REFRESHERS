import 'package:flutter/material.dart';

class WidgetAndProperties extends StatelessWidget {
  const WidgetAndProperties({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  print("you clicked me");
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xB32195F3), // Background color
                ),
                child: const Text("Click me")),
            TextButton(
              onPressed: () {
                // Add your onPressed callback here
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.red, // Text color
              ),
              child: const Text('Button Text'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.mail),
              label: const Text("mail me"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color(0xB321F321),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(
                    255, 241, 191, 230), // Set the background color here
                shape:
                    BoxShape.circle, // Optional: Set the shape of the container
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.accessibility_new_outlined),
              ),
            ),
            Row(
              children: [
                Expanded(
                    flex: 6,
                    child: Image.asset("lib/Assets/Images/travel.jpg")),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.red,
                    child: const Text("1"),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.green,
                    child: const Text("2"),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.yellow,
                    child: const Text("3"),
                  ),
                ),
              ],
            ),
            const CircleAvatar(
              backgroundImage: AssetImage("lib/Assets/Images/feran.jpg"),
              radius: 80,
            ),
            const Divider(
              height: 40, // space above and below it
              color: Color.fromARGB(255, 0, 0, 0),
            )
          ],
        ),
      ),
    );
  }
}
