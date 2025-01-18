import 'package:flutter/material.dart';

// import 'package:quotesapp/screens/home_screen.dart';

class SecondScreen extends StatelessWidget {
  String quoteText;
  String authorName;
  SecondScreen({Key? key, required this.quoteText, required this.authorName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        // Padding(
        //   padding: const EdgeInsets.all(16.0),
        //   child: Text(
        //     quoteText,
        //     style: TextStyle(fontSize: 20, color: Colors.blue),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(right: 16.0),
        //   child: Align(
        //       alignment: Alignment.bottomRight,
        //       child: Text(
        //         "- $authorName",
        //         style: TextStyle(fontSize: 18),
        //       )),
        // ),
      ]),

      // body: Center(
      //     child: ElevatedButton(
      //         onPressed: () {
      //           Navigator.of(context).pop();
      //         },
      //         child: Text('Back'))),
    );
  }
}
