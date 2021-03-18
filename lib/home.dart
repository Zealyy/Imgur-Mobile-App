import 'dart:convert';

import 'package:epicture/image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'imports.dart';
import 'package:english_words/english_words.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void homeData() async {
    var response = await http.get(
      Uri.parse('https://api.imgur.com/3/image/T0IBWsL'),
      headers: {'Authorization': 'Client-ID ' + clientId},
    );

    final repStr = jsonDecode(response.body);

    print(repStr);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ImagePage()
        // Container(
        //   width: double.infinity,
        //   decoration: BoxDecoration(
        //       //color: Color(0xFF141518),
        //       ),
        //   child: Column(
        //     children: <Widget>[
        //       SizedBox(
        //         height: 150,
        //       ),
        //       Text(
        //         "Home Page",
        //         style: TextStyle(color: Colors.white, fontSize: 40),
        //       ),
        //       SizedBox(
        //         height: 10,
        //       ),
        //       ElevatedButton(
        //         style: ElevatedButton.styleFrom(
        //           primary: Color(0xFF1bb76e), // background
        //           onPrimary: Colors.white, // foreground
        //           textStyle: TextStyle(fontSize: 18),
        //           minimumSize: Size(150, 45),
        //         ),
        //         onPressed: homeData,
        //         child: Text(
        //           'homeData',
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        );
  }
}
