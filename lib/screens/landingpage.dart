import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key, title});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final List columns = [
      [
        {"title": "Access Bank Dashboard", "route": "access"},
        {"title": "Forms", "route": "forms"},
        {"title": "Duolingo Profile", "route": "duolingo"},
        {"title": "World Map", "route": "loading"}
      ],
      [
        {"title": "Scaffold Properties", "route": "scaffold"},
        {"title": "Widgets And Properties", "route": "widgets"},
        {"title": "Dynamic Data", "route": "data"},
      ],
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Row(
              // mainAxis and crossAxis works just works like flex
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Quick Screen Access"),
                Icon(Icons.more_vert_outlined)
              ]),
          backgroundColor: Colors.greenAccent,
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: columns.map((column) {
                  return Column(
                    children: [
                      Text(
                        column == columns[0] ? "Mini Project" : "Flutter Ninja",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 300,
                        child: ListView.builder(
                          itemCount: column.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, column[index]["route"]);
                                    },
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: const Size(350, 60),
                                        shape: const RoundedRectangleBorder(),
                                        foregroundColor: Colors.white,
                                        backgroundColor: const Color.fromARGB(
                                            255, 0, 148, 141)),
                                    child: Text(column[index]["title"])),
                                const SizedBox(
                                  height: 12,
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  );
                }

                    //  [
                    //   Column(
                    //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //     children: [
                    //       const Text(
                    //         "Flutter Ninja",
                    //         style:
                    //             TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                    //       ),
                    //       SizedBox(
                    //         height: 300,
                    //         child: ListView.builder(
                    //           itemCount: categories.length,
                    //           itemBuilder: (context, index) {
                    //             return Column(
                    //               children: [
                    //                 ElevatedButton(
                    //                     onPressed: () {
                    //                       Navigator.pushNamed(
                    //                           context, categories[index]["route"]);
                    //                     },
                    //                     style: ElevatedButton.styleFrom(
                    //                         fixedSize: const Size(350, 60),
                    //                         shape: const RoundedRectangleBorder(),
                    //                         foregroundColor: Colors.white,
                    //                         backgroundColor: const Color.fromARGB(
                    //                             255, 0, 148, 141)),
                    //                     child: Text(categories[index]["title"])),
                    //                 const SizedBox(
                    //                   height: 12,
                    //                 )
                    //               ],
                    //             );
                    //           },
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ],
                    ).toList(),
              ),
            )));
  }
}
