import 'package:flutter/material.dart';
import 'package:practiceapp/FlutterVideosPractice/MoreScaffoldProperties.dart';
import 'package:practiceapp/FlutterVideosPractice/MoreWidgetsAndProperties.dart';
import 'package:practiceapp/PersonalPractice/Apps%20Layout/AccessBankHomeScreen.dart';
import 'package:practiceapp/PersonalPractice/Widgets%20Layout/BasicLayoutLesson.dart';
import 'package:practiceapp/PersonalPractice/Apps%20Layout/DuolingProfile.dart';
import 'package:practiceapp/PersonalPractice/Apps%20Layout/MyFormLayout.dart';
import 'package:practiceapp/PersonalPractice/Widgets%20Layout/DatePicker.dart';
import 'package:practiceapp/PersonalPractice/Widgets%20Layout/SelectDropdowns.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade300),
        useMaterial3: true,
      ),
      home: const TheHomePage(
          title: 'Flutter Demo Home Page'), // expecting an argument
    );
  }
}

class TheHomePage extends StatelessWidget {
  const TheHomePage({super.key, title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title doesn't have child elements just write the widget directly
          // titleSpacing removes the horizontal space in the appBar
          // Column and Row is how you Organize the flow of your Layout
          title: const Row(
              // mainAxis and crossAxis works just works like flex
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Layout of Practice Courses"),
                Icon(Icons.more_vert_outlined)
              ]),
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
            child: SingleChildScrollView(
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Widget Practice",
                  style: TextStyle(fontSize: 30),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          // Navigate to the second route using Navigator.push()
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BasicLayoutLesson()));
                    },
                    child: const Text("Basic Layout")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          // Navigate to the second route using Navigator.push()
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DatePicker()));
                    },
                    child: const Text("Date Picker")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          // Navigate to the second route using Navigator.push()
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Dropdowns()));
                    },
                    child: const Text(" Handling Dropdowns")),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "APP LAYOUT PROJECTS ",
                  style: TextStyle(fontSize: 30),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AccessBankingApp()));
                    },
                    child: const Text(" Access Bank Dashboard")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FormLayout()));
                    },
                    child: const Text("Building Form Layouts")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DuolingoProfile()));
                    },
                    child: const Text("My Duolingo Profile")),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "FlutterNinja Practice",
                  style: TextStyle(fontSize: 30),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ScaffoldProperties()));
                    },
                    child: const Text("More on ScaffoldProperties")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const WidgetAndProperties()));
                    },
                    child: const Text("More on Widgets And Properties")),
              ]),
        )));
  }
}

// st to create widget
