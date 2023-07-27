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
  double sliderTamanoTexto = 0;
  int tamanoDeTexto = 0;
  double sliderRedValue = 0;
  double sliderGreenValue = 0;
  double sliderBlueValue = 0;
  double transpareciaColor = 1;

  bool valueCheckBox = false;
  bool isUnderline = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("States"),
        centerTitle: true,
      ),
      body: Column(children: [
        SizedBox(
          height: 8.0,
        ),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          style: TextStyle(
            fontSize: sliderTamanoTexto > 1 ? tamanoDeTexto.toDouble() : 14,
            fontWeight: FontWeight.w500,
            height: 1.3,
            color: Color.fromRGBO(
                sliderRedValue.toInt(),
                sliderGreenValue.toInt(),
                sliderBlueValue.toInt(),
                transpareciaColor),
            decoration:
                isUnderline ? TextDecoration.lineThrough : TextDecoration.none,
          ),
          textAlign: valueCheckBox ? TextAlign.justify : TextAlign.left,
        ),
        Text(
          sliderTamanoTexto > 0.1
              ? "El Tamaño del Texto es de $tamanoDeTexto"
              : "El Tamaño del Texto es de 14",
        ),
        Slider(
          value: sliderTamanoTexto,
          min: 0,
          max: 18,
          activeColor: Colors.black38,
          inactiveColor: Colors.black12,
          thumbColor: Colors.black,
          onChanged: (double pepito) {
            sliderTamanoTexto = pepito;
            tamanoDeTexto = pepito.toInt();
            print(sliderTamanoTexto);

            setState(() {});
          },
        ),
        Slider(
          value: sliderRedValue,
          min: 0,
          max: 255,
          activeColor: Colors.red,
          inactiveColor: Colors.black12,
          thumbColor: Colors.red,
          onChanged: (double pepito) {
            sliderRedValue = pepito;

            setState(() {});
          },
        ),
        Slider(
          value: sliderGreenValue,
          min: 0,
          max: 255,
          activeColor: Colors.green,
          inactiveColor: Colors.black12,
          thumbColor: Colors.green,
          onChanged: (double pepito) {
            sliderGreenValue = pepito;

            setState(() {});
          },
        ),
        Slider(
          value: sliderBlueValue,
          min: 0,
          max: 255,
          activeColor: Colors.blue,
          inactiveColor: Colors.black12,
          thumbColor: Colors.blue,
          onChanged: (double pepito) {
            sliderBlueValue = pepito;

            setState(() {});
          },
        ),
        Slider(
          value: transpareciaColor,
          min: 0,
          max: 1,
          activeColor: Colors.black12,
          inactiveColor: Colors.black54,
          thumbColor: Colors.black26,
          onChanged: (double pepito) {
            transpareciaColor = pepito;
            print(pepito);

            setState(() {});
          },
        ),
        Text(
          "Este es la Transparencia.",
        ),
        CheckboxListTile(
            value: valueCheckBox,
            title: Text("Justificado"),
            subtitle: Text("Alineacion"),
            onChanged: (bool? mandarina) {
              print(mandarina);
              valueCheckBox = mandarina!;
              setState(() {});
            }),
        CheckboxListTile(
            value: isUnderline,
            title: Text("Underline"),
            subtitle: Text("Decoration"),
            onChanged: (bool? mandarina) {
              print(mandarina);
              isUnderline = mandarina!;
              setState(() {});
            }),
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
