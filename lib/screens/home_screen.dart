import 'package:flutter/material.dart';
// import 'package:quotesapp/screens/second_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String quote = "";
  String author = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: Text("Rohit")),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  quote,
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "- $author",
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              ElevatedButton(
                  onPressed: () async {
                    var url = Uri.parse(
                        'http://api.quotable.io/random?tags=technology%2Cfamous-quotes');
                    var response = await http.get(url);
                    print('Response status: ${response.statusCode}');
                    print('Response status: ${response.body}');
                    var data = jsonDecode(response.body);

                    quote = data["content"];
                    author = data["author"];

                    // To print the data what we got after API calling //
                    // print(data["content"]);
                    // print(data["author"]);

                    setState(() {});

                    //Navigation to next screen
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => SecondScreen(
                    //         quoteText: quote, authorName: author)));
                  },
                  child: Text('Get Quote')),
            ],
          )),
    );
  }
}






// StateLess Widget
/* class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: Text('Rohit')),
          body: Center(
            child: ElevatedButton(
                onPressed: () async {
                  var url = Uri.parse(
                      'http://api.quotable.io/random?tags=technology%2Cfamous-quotes');
                  var response = await http.get(url);
                  print('Response status: ${response.statusCode}');
                  print('Response status: ${response.body}');
                  var data = jsonDecode(response.body);

                  String quote = data["content"];
                  String author = data["author"];

                  // To print the data what we got after API calling //
                  // print(data["content"]);
                  // print(data["author"]);

                  //Navigation to next screen
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          SecondScreen(quoteText: quote, authorName: author)));
                },
                child: Text('Get Quote')),
          )),
    );
  }
}
*/