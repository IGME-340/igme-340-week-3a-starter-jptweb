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

    final myScheme = ColorScheme.fromSeed(seedColor:Colors.orange);

    return MaterialApp(
      theme: ThemeData(
        colorScheme: myScheme,
        textTheme: TextTheme(
            displayLarge: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: myScheme.inversePrimary,
            ),
            displaySmall: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.orange,
            ),
            bodyMedium: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.orange,
            )
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: myScheme.inversePrimary,
            )
          )
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      themeMode: ThemeMode.light,
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
  void _doSomething() {
    debugPrint("Method Called");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Week 3A App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 30,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: double.infinity,
                height: 250,
                color: Theme.of(context).colorScheme.primary,
                child: Text(
                  "Hello Week 1",
                  style: Theme.of(context).textTheme.displayLarge,
                )),
            Container(
                width: 150,
                height: 250,
                color: Theme.of(context).colorScheme.secondary,
                child: Text("Hello Week 2")),
            Container(
                width: 150,
                height: 320,
                color: Theme.of(context).colorScheme.error,
                child: Text("Hello Week 2")),
            ElevatedButton(
              onPressed: _doSomething,
              child: Text("Elevated"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.yellow,
                  textStyle: TextStyle(fontSize: 25)),
            ),
            OutlinedButton(
                onPressed: () => _doSomething(), child: Text("Outlined")),
            TextButton(
                onPressed: () {
                  _doSomething();
                },
                child: Text("Text Button")),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text("With Icon"),
              icon: Icon(Icons.airline_seat_legroom_extra_sharp),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(width: 150, height: 150, color: Colors.brown),
                  Container(width: 150, height: 150, color: Colors.red),
                  Container(width: 150, height: 150, color: Colors.green),
                  Container(width: 150, height: 150, color: Colors.teal),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
