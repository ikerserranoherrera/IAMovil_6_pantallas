import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Mantenemos el AppBar con la estética de las anteriores
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Iniciar Sesión",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor:
          Colors.grey[200], // Fondo ligeramente gris para resaltar el cuadro
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 40,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Hace que el cuadro se ajuste al contenido
                  children: [
                    const Icon(
                      Icons.account_circle,
                      size: 80,
                      color: Colors.black,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Bienvenido",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30),

                    // Campos de texto
                    const TextField(
                      decoration: InputDecoration(
                        labelText: "Correo Electrónico",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 15),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Contraseña",
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 25),

                    // Botón de Entrar
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {}, // No funcional
                        child: const Text(
                          "ENTRAR",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),
                    const Text("O inicia sesión con:"),
                    const SizedBox(height: 20),

                    // Botones de Redes Sociales (Estéticos)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _socialButton(
                          color: Colors.red[700]!,
                          icon: Icons.g_mobiledata,
                          label: "Google",
                        ),
                        const SizedBox(width: 15),
                        _socialButton(
                          color: Colors.blue[900]!,
                          icon: Icons.facebook,
                          label: "Facebook",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Widget auxiliar para los botones sociales
  Widget _socialButton({
    required Color color,
    required IconData icon,
    required String label,
  }) {
    return InkWell(
      onTap: () {}, // No funcional
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 5),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}