import 'package:flutter/material.dart';

class WidgetAndProperties extends StatelessWidget {
  const WidgetAndProperties({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
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
                  backgroundColor: Color(0xB32195F3), // Background color
                ),
                child: Text("Click me")),
            TextButton(
              onPressed: () {
                // Add your onPressed callback here
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.red, // Text color
              ),
              child: Text('Button Text'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.mail),
              label: Text("mail me"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xB321F321),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(
                    255, 241, 191, 230), // Set the background color here
                shape:
                    BoxShape.circle, // Optional: Set the shape of the container
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.accessibility_new_outlined),
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
                    padding: EdgeInsets.all(20),
                    child: Text("1"),
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Text("2"),
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Text("3"),
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
            Text("dd")
          ],
        ),
      ),
    );
  }
}
