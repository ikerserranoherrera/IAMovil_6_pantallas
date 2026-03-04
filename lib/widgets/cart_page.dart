import 'package:flutter/material.dart';
import 'custom_drawer.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("Tu Carrito", style: TextStyle(color: Colors.white)),
      ),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  _cartItem("Famous Star", 1, 120.0),
                  _cartItem("Papas Crisscut", 2, 60.0),
                ],
              ),
            ),
            const Divider(),
            _infoRow("Método de Pago", "Visa **** 4582", Icons.payment),
            _infoRow("Dirección", "Av. Hamburguesa #123", Icons.map),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 60),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("¡Pedido Confirmado!")),
                );
              },
              child: const Text(
                "CONFIRMAR PEDIDO",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cartItem(String name, int qty, double price) {
    return Card(
      child: ListTile(
        title: Text(name),
        subtitle: Text("\$${price * qty}"),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.remove_circle_outline),
              onPressed: () {},
            ),
            Text("$qty"),
            IconButton(
              icon: const Icon(Icons.add_circle_outline),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoRow(String title, String value, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Icon(icon, size: 20),
          const SizedBox(width: 10),
          Text("$title: ", style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(value),
        ],
      ),
    );
  }
}
