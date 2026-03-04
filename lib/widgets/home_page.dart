import 'package:flutter/material.dart';
import 'custom_drawer.dart'; // Importante para el menú

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Carl's Jr Isaac",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: const CustomDrawer(), // Menú lateral funcional
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              'https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/Act12aaa.webp',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Categorías",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            // Fila de Categorías
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCategoryItem(
                  context,
                  "Hamburguesas",
                  "https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/Act12burguer.png",
                  '/categorias',
                ),
                _buildCategoryItem(
                  context,
                  "Bebidas",
                  "https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/Act12bebidas.png",
                  '/bebidas',
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem(
    BuildContext context,
    String title,
    String url,
    String route,
  ) {
    return Column(
      children: [
        Container(
          width: 160,
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow,
            foregroundColor: Colors.black,
          ),
          onPressed: () => Navigator.pushNamed(context, route),
          child: Text("Ver $title"),
        ),
      ],
    );
  }
}
