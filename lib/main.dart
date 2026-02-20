import 'package:flutter/material.dart';

void main() {
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dokya AI | Dev Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFF0A0A0A), // Negro profundo
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // --- SECCIÓN HERO ---
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blue.withOpacity(0.1), const Color(0xFF0A0A0A)],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "DOKYA AI",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, letterSpacing: 5),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Flutter Developer & AI Enthusiast",
                    style: TextStyle(fontSize: 20, color: Colors.grey[400]),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    ),
                    child: const Text("Ver Proyectos"),
                  ),
                ],
              ),
            ),

            // --- SECCIÓN PROYECTOS (SHADOWGPT) ---
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                children: [
                  const Text("Proyectos Destacados", style: TextStyle(fontSize: 30)),
                  const SizedBox(height: 30),
                  Card(
                    color: const Color(0xFF1A1A1A),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(20),
                      title: const Text("ShadowGPT", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                      subtitle: const Text("\nUna interfaz minimalista para interactuar con IA, enfocada en la productividad nocturna y la simplicidad."),
                      trailing: const Icon(Icons.auto_awesome, color: Colors.blueAccent),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}