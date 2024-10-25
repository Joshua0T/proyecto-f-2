import 'package:flutter/material.dart';

class Pedido extends StatefulWidget {
  const Pedido({super.key});

  @override
  State<Pedido> createState() => _PedidoState();
}

class _PedidoState extends State<Pedido> {
  // Lista de pedidos
  final List<Map<String, dynamic>> pedidos = [
    {
      'numeroPedido': 1,
      'nombreCliente': 'Juan Pérez',
      'descripcion': 'Camiseta de algodón',
      'cantidad': 2,
      'fechaEntrega': '2024-10-25',
    },
    {
      'numeroPedido': 2,
      'nombreCliente': 'María López',
      'descripcion': 'Pantalones vaqueros',
      'cantidad': 1,
      'fechaEntrega': '2024-10-26',
    },
    {
      'numeroPedido': 3,
      'nombreCliente': 'Carlos Gómez',
      'descripcion': 'Zapatos deportivos',
      'cantidad': 1,
      'fechaEntrega': '2024-10-27',
    },
    {
      'numeroPedido': 4,
      'nombreCliente': 'Ana Martínez',
      'descripcion': 'Chaqueta de cuero',
      'cantidad': 1,
      'fechaEntrega': '2024-10-28',
    },
    {
      'numeroPedido': 5,
      'nombreCliente': 'Pedro Sánchez',
      'descripcion': 'Gorra de béisbol',
      'cantidad': 3,
      'fechaEntrega': '2024-10-29',
    },
    {
      'numeroPedido': 6,
      'nombreCliente': 'Laura Torres',
      'descripcion': 'Bufanda de lana',
      'cantidad': 2,
      'fechaEntrega': '2024-10-30',
    },
    {
      'numeroPedido': 7,
      'nombreCliente': 'Jorge Díaz',
      'descripcion': 'Cinturón de piel',
      'cantidad': 1,
      'fechaEntrega': '2024-10-31',
    },
    {
      'numeroPedido': 8,
      'nombreCliente': 'Claudia Ramírez',
      'descripcion': 'Bolso de mano',
      'cantidad': 1,
      'fechaEntrega': '2024-11-01',
    },
    {
      'numeroPedido': 9,
      'nombreCliente': 'Luis Martínez',
      'descripcion': 'Reloj de pulsera',
      'cantidad': 1,
      'fechaEntrega': '2024-11-02',
    },
    {
      'numeroPedido': 10,
      'nombreCliente': 'Sofía Torres',
      'descripcion': 'Chaqueta de invierno',
      'cantidad': 1,
      'fechaEntrega': '2024-11-03',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pedidos"),
      ),
      body: ListView.builder(
        itemCount: pedidos.length,
        itemBuilder: (BuildContext context, int index) {
          final pedido = pedidos[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pedido #${pedido['numeroPedido']}',
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text('Nombre del Cliente: ${pedido['nombreCliente']}'),
                  Text('Descripción: ${pedido['descripcion']}'),
                  Text('Cantidad: ${pedido['cantidad']}'),
                  Text('Fecha de Entrega: ${pedido['fechaEntrega']}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
