import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/inicio.dart';
import 'package:flutter_application_1/screen/pedidos.dart';

class menDrawner extends StatefulWidget {
  const menDrawner({super.key});

  @override
  State<menDrawner> createState() => _menDrawnerState();
}

class _menDrawnerState extends State<menDrawner> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              Image(
                image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkcdsXtXuACUgWyTghu8z8NwVXRo5Hs0gHtA&s"
                  ),
              ),
              Divider(),
              ListTile(
                title: Text("Inicio"),
                subtitle: Text("Productos"),
                trailing: Icon( Icons.arrow_circle_right),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> Inicio()));
                },
              ),
              Divider(),
              ListTile(
                title: Text("Mis pedidos"),
                subtitle: Text("revisa el estado"),
                trailing: Icon(Icons.arrow_circle_right),
                leading: Icon(Icons.shopping_cart),
                onTap:(){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Pedido()));
                },  
                ),
                Divider(),
                ListTile(
                title: Text("carrito de compras"),
                subtitle: Text("tus articulos seleccionados"),
                trailing: Icon(Icons.arrow_circle_right),
                leading: Icon(Icons.store),
                onTap:(){
                }, 
                ),
                Divider(),
                ListTile(
                title: Text("cuenta"),
                subtitle: Text("gestionar cuenta"),
                trailing: Icon(Icons.arrow_circle_right),
                leading: Icon(Icons.account_circle),
                
                onTap:(){
                },  
                )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("calidad de servocop"),
          backgroundColor: Colors.red[300],
          foregroundColor: Colors.white,
          
          ),
          body: Center(
            child: Column(
            children: [
              Text("compras por internet"),
              Text("compras por internet"),
              Text("compras por internet"),
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkcdsXtXuACUgWyTghu8z8NwVXRo5Hs0gHtA&s"),
              )
            ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [BottomNavigationBarItem(icon: Icon(Icons.home),label:"Inicio"),
            BottomNavigationBarItem(icon: Icon(Icons.monetization_on),label: "pagos"),
            BottomNavigationBarItem(icon: Icon(Icons.home_max_rounded),label: "pagos")]),
          floatingActionButton: ElevatedButton(onPressed: () {
            
          }, child: Icon(Icons.add)),
      );    
  }
} 
  
