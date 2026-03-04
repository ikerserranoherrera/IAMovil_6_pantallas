import 'package:flutter/material.dart';

class BurgersPage extends StatelessWidget {
  const BurgersPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de nombres de las hamburguesas
    final List<String> burgerNames = [
      "Famous Star",
      "Western Bacon",
      "The Big Carl",
      "Teriyaki Burger",
      "Double Western",
      "Guacamole Burger",
    ];

    // AQUÍ AGREGA TUS LINKS
    final List<String> burgerImages = [
      "https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/famousstar.png",
      "https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/boblewesternuwu.png",
      "https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/hongos.png",
      "https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/pollo.png",
      "https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/pollobbq.png",
      "https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/lowcarb.png",
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Row(
          children: const [
            Icon(Icons.star, color: Colors.yellow),
            SizedBox(width: 10),
            Text("Carl's Jr Isaac", style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 columnas
                childAspectRatio:
                    0.8, // Ajusta la proporción para que quepa imagen y texto
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return _buildBurgerItem(
                  burgerNames[index],
                  "\$${(index + 1) * 100}",
                  burgerImages[index],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50), // Botón ancho
              ),
              onPressed: () => Navigator.pushNamed(context, '/login'),
              child: const Text("Ir a Iniciar Sesión"),
            ),
          ),
        ],
      ),
    );
  }

  // Widget de la tarjeta de hamburguesa editado para recibir URL
  Widget _buildBurgerItem(String name, String price, String imageUrl) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(15),
              ),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                errorBuilder: (context, error, stackTrace) => Container(
                  color: Colors.grey[200],
                  child: const Icon(
                    Icons.fastfood,
                    color: Colors.grey,
                    size: 40,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  price,
                  style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}