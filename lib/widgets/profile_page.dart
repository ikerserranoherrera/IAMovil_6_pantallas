import 'package:flutter/material.dart';
import 'custom_drawer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("Mi Perfil", style: TextStyle(color: Colors.white)),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.yellow,
              child: Icon(Icons.person, size: 80, color: Colors.black),
            ),
            const SizedBox(height: 20),
            _profileField("Nombre", "Isaac Serrano", Icons.person),
            _profileField("Correo", "isaac@ejemplo.com", Icons.email),
            _profileField(
              "Dirección",
              "Av. Hamburguesa #123, Ciudad Estrella",
              Icons.location_on,
            ),
            _profileField("Teléfono", "+52 656 123 4567", Icons.phone),
            _profileField(
              "Método de Pago",
              "**** **** **** 4582",
              Icons.credit_card,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
              onPressed: () => Navigator.pushNamed(context, '/'),
              child: const Text("Volver al Inicio"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _profileField(String label, String value, IconData icon) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.black),
        title: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(value),
      ),
    );
  }
}
