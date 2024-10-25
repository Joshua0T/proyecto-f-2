import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor:  Colors.amber[800],
        backgroundColor: Colors.white,
        title: Text("E comerce"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkcdsXtXuACUgWyTghu8z8NwVXRo5Hs0gHtA&s"),height: 150,width: 150,),
          SizedBox(height: 16,),
          
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("articulo 1",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Icon(Icons.favorite_border),
          ],
          ),
          SizedBox(height: 8),
          Text("Bienvenidos"),
          SizedBox(height: 8),
          Text("flutter",
          style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),

          Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text(
      "articulo 2",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    Icon(Icons.favorite_border),
  ],
),
SizedBox(height: 8),
Text("Bienvenidos"),
SizedBox(height: 8),
Text(
  "flutter",
  style: TextStyle(fontSize: 16),
),
SizedBox(height: 8),

// Botón agregado
ElevatedButton(
  onPressed: () {
    // Aquí puedes agregar la funcionalidad del botón
  },
  child: Text("Ver detalles"),
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.amber[800], // Color del botón
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    textStyle: TextStyle(fontSize: 16),
  ),
),
        ],
        
      ),
      
    );
  }
}