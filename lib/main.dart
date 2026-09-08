//JP's App for day 3A

//Test anohter

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Week3App(),
    );
  }
}

class Week3App extends StatefulWidget {
  const Week3App({super.key});

  @override
  State<Week3App> createState() => _Week3AppState();
}

class _Week3AppState extends State<Week3App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text("Week 3A App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width:200,
              height:100,
              color:Colors.green,
              child: Text("Hello Week 1")
            ),
            
            Container(
              width:150,
              height:100,
              color:Colors.yellow,
              child: Text("Hello Week 2")              
            )
          ],
        ), 
        );
  }
}
