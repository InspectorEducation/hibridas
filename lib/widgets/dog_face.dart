import 'package:flutter/material.dart';

class MyDogFace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cara de Perro con Stack'),
        ),
        body: Center(
          child: DogFace(),
        ),
      ),
    );
  }
}

class DogFace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Cabeza del perro
        Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.blueGrey,
          ),
        ),
        // Ojo derecho
        Positioned(
          left: 250,
          top: 80,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
        ),

        // Ojo izquierdo
        Positioned(
          right: 250,
          top: 80,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
        ),
        //Pupila Izquierda
        Positioned(
          right: 270,
          top: 110,
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
        ),
        //Pupila Derecha
        Positioned(
          left: 270,
          top: 110,
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
        ),
        // Nariz
        Positioned(
          left: 180,
          top: 200,
          child: Container(
            width: 40,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
        ),
        // Boca (una simple línea curva)
        Positioned(
          left: 160,
          top: 300,
          child: Container(
            width: 80,
            height: 40,
            decoration: BoxDecoration(
                //shape: BoxShape.circle,
                color: Colors.black,
                borderRadius: BorderRadius.circular(80.0)),
          ),
        ),
      ],
    );
  }
}
