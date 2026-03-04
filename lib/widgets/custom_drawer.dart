import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.yellow, size: 40),
                  SizedBox(height: 10),
                  Text(
                    "MENÚ CARL'S JR",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            _createItem(context, Icons.home, "Inicio", '/'),
            _createItem(
              context,
              Icons.lunch_dining,
              "Hamburguesas",
              '/categorias',
            ),
            _createItem(context, Icons.local_drink, "Bebidas", '/bebidas'),
            _createItem(context, Icons.shopping_cart, "Mi Carrito", '/carrito'),
            _createItem(context, Icons.person, "Mi Perfil", '/perfil'),
            const Divider(),
            _createItem(context, Icons.exit_to_app, "Cerrar Sesión", '/login'),
          ],
        ),
      ),
    );
  }

  Widget _createItem(
    BuildContext context,
    IconData icon,
    String title,
    String route,
  ) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(title, style: const TextStyle(fontSize: 16)),
      onTap: () {
        Navigator.pop(context); // Cierra el drawer
        Navigator.pushNamed(context, route); // Navega a la pantalla
      },
    );
  }
}
