import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 100;
  String nombre = "Dino Panta";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            counter.toString(),
            style: TextStyle(
              fontSize: 40.0,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              counter = counter + 10;
              setState(
                  () {}); //redibuja todo desde el  Widget build(BuildContext context) {

              print(counter);
            },
            child: Text("Click"),
          ),
        ]),
      ),
    );
  }
}
