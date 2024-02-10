import 'package:flutter/material.dart';
import 'package:practiceapp/FlutterVideosPractice/MoreScaffoldProperties.dart';
import 'package:practiceapp/FlutterVideosPractice/MoreWidgetsAndProperties.dart';
import 'package:practiceapp/PersonalPractice/AccessBankHomeScreen.dart';
import 'package:practiceapp/PersonalPractice/BasicLayoutLesson.dart';
import 'package:practiceapp/PersonalPractice/MyFormLayout.dart';

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
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
                        context,
                        MaterialPageRoute(
                            builder: (context) => AccessBankingApp()));
                  },
                  child: const Text("Practice - Access Bank Layout")),
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
                            builder: (context) => ScaffoldProperties()));
                  },
                  child: const Text("More on ScaffoldProperties")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WidgetAndProperties()));
                  },
                  child: const Text("More on Widgets And Properties")),
            ])));
  }
}

// st to create widget
