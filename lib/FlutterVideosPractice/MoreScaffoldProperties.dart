import 'package:flutter/material.dart';

class ScaffoldProperties extends StatelessWidget {
  const ScaffoldProperties({super.key});
// For more check Scaffold class on the flutter website
// For colors shades check color system online
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 64, 255, 249),
        title: const Text(
          "Scaffold Properties",
          style: TextStyle(fontFamily: "AbrilFatFace"),
        ),
        centerTitle: true,
      ),
      body: const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(
            height: 340,
            width: 340,
            image: NetworkImage(
                "https://plus.unsplash.com/premium_photo-1675802449192-16ae14e4bd5a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzN3x8fGVufDB8fHx8fA%3D%3D"),
          ),
          Image(
            image: AssetImage("lib/Assets/Images/travel.jpg"),
            height: 340,
            width: 340,
          ), 
          // Image.asset("")
          // Image.network("")
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: const Text(
          "Click ",
          style: TextStyle(fontFamily: "AbrilFatFace"),
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFF5F7293),
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
          color: Colors.black,
        ),
      ),
    );
  }
}
