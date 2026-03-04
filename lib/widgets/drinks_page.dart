import 'package:flutter/material.dart';
import 'custom_drawer.dart';

class DrinksPage extends StatelessWidget {
  const DrinksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> drinks = [
      {"name": "Coca-Cola", "img": "https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/Act12bebidas.png"},
      {"name": "Sprite", "img": "https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/Act12bebidas.png"},
      {"name": "Té Helado", "img": "https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/Act12bebidas.png"},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("Bebidas", style: TextStyle(color: Colors.white)),
      ),
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: drinks.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: Image.network(drinks[index]['img']!),
                    title: Text(drinks[index]['name']!),
                    trailing: const Text("\$45.00", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black, foregroundColor: Colors.white),
              onPressed: () => Navigator.pushNamed(context, '/carrito'),
              child: const Text("Ir al Carrito"),
            ),
          )
        ],
      ),
    );
  }
}