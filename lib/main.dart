import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InitPage(),
    );
  }
}

class InitPage extends StatefulWidget {
  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  double sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("States"),
        centerTitle: true,
      ),
      body: Column(children: [
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            height: 1.3,
            color: Colors.red,
          ),
        ),
        Slider(
          value: sliderValue,
          min: 0,
          max: 300,
          onChanged: (double pepito) {
            sliderValue = pepito;
            print(pepito);
            setState(() {});
          },
        ),
      ]),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  List<int> numbers = [23, 11, 24, 100, 56, 80, 230, 125];

  List<String> images = [
    "https://images.pexels.com/photos/17551618/pexels-photo-17551618/free-photo-of-amor-verano-jardin-hoja.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/17044199/pexels-photo-17044199/free-photo-of-ninos-cuzco.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/17648793/pexels-photo-17648793.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/17599234/pexels-photo-17599234/free-photo-of-mar-naturaleza-cielo-agua.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/17286889/pexels-photo-17286889/free-photo-of-gente-multitud-musica-divertido.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/15744746/pexels-photo-15744746/free-photo-of-animales-aves-rosa-flamencos.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/9206389/pexels-photo-9206389.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ];

  @override
  Widget build(BuildContext context) {
    print("BUID......");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            // numbers[counter].toString(),
            //style: const TextStyle(
            //  fontSize: 40.0,
            //  fontWeight: FontWeight.w400,
            //),
            //),

            Expanded(
              child: Image.network(
                images[counter],
                fit: BoxFit.cover,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print(images.length);
                    if (counter < (images.length - 1)) {
                      counter = counter + 1;

                      setState(
                          () {}); //redibuja todo desde el  Widget build(BuildContext context) {
                    }
                  },
                  child: Text("Siguiente"),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (counter > 0) {
                      counter = counter - 1;
                      setState(
                          () {}); //redibuja todo desde el  Widget build(BuildContext context) {
                    }
                  },
                  child: Text("Anterior"),
                ),
              ],
            ),
          ],
        ),
        //]
      ),
    );
  }
}
