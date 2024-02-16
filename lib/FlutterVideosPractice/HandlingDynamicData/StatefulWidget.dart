import 'package:flutter/material.dart';
import 'package:practiceapp/FlutterVideosPractice/HandlingDynamicData/quotes.dart';

class DynamicData extends StatefulWidget {
  const DynamicData({super.key});

  @override
  State<DynamicData> createState() => _DynamicDataState();
}

class _DynamicDataState extends State<DynamicData> {
  int counter = 0;
  // List<String> quotes = [
  //   "Be yourself everyone else is taken",
  //   "I have nothing to declare except my genius",
  //   "The truth is really pure and never simple",
  // ];

  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wilde',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Oscar Wilde',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Oscar Wilde',
        text: 'The truth is rarely pure and never simple')
  ];

//  Widget quoteTemplates(quote) {
//     return Card(
//       margin: const EdgeInsets.all(10),
//       child: Padding(
//         padding: const EdgeInsets.all(14.0),
//         child: Column(
//           children: [
//             Text(
//               quote.text,
//               style: const TextStyle(
//                   fontSize: 18, color: Color.fromARGB(255, 46, 46, 46)),
//             ),
//             Text(quote.author,
//                 style: const TextStyle(
//                     fontSize: 14, color: Color.fromARGB(255, 80, 79, 79)))
//           ],
//         ),
//       ),
//     );
//   }

// A better way is to create its on stateless widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Working with Stateful Data"),
      ),
      body: Center(
          child: Column(
        children: [
          const Text(
            "Ninja level",
            style: TextStyle(fontSize: 40),
          ),
          Text(
            "$counter",
            style: const TextStyle(fontSize: 30),
          ),
          const SizedBox(
            height: 50,
          ),
          Column(
            
            // children: quotes.map((quote) => Text(quote)).toList(),

            // children: quotes
            //     .map((quote) => Text("${quote.text} by ${quote.author}"))
            //     .toList(),

            // children: quotes.map((quote) => quoteTemplates(quote)).toList(),

            children: quotes
                .map((quote) => CardTemplate(
                    quote: quote,
                    delete: () {
                      setState(() {
                        quotes.remove(quote);
                      });
                    }))
                .toList(),
          )
        ],
      )),
    );
  }
}

class CardTemplate extends StatelessWidget {
  const CardTemplate({super.key, required this.quote, required this.delete});

  final Quote quote;
  final void Function() delete;
  // using final allows us to use data in stateless widget, because it tells dart that nothing will change

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Text(
              quote.text,
              style: const TextStyle(fontSize: 18, color: Color(0xFF2E2E2E)),
            ),
            Text(quote.author,
                style: const TextStyle(fontSize: 14, color: Color(0xFF504F4F))),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(),
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.black),
              onPressed: delete, // passing functions as parameters
              label: Text("Delete"),
              icon: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
