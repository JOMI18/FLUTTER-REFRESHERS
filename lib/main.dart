import 'package:flutter/material.dart';

import 'package:practiceapp/imports.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade300),
        useMaterial3: true,
      ),
      initialRoute: "landing",
      routes: {
        "landing": (context) => LandingPage(),

        // MAP
        "maps": (context) => WorldMap(),
        "location": (context) => Location(),
        "loading": (context) => Loading(),

        // Custom
        "datepicker": (context) => DatePicker(),
        "dropdowns": (context) => Dropdowns(),

        // Mini Projects
        "access": (context) => AccessBankingApp(),
        "forms": (context) => FormLayout(),
        "duolingo": (context) => DuolingoProfile(),

        // Ninja
        "scaffold": (context) => ScaffoldProperties(),
        "widgets": (context) => WidgetAndProperties(),
        "data": (context) => DynamicData(),
      },
    );
  }
}

// st to create widget
