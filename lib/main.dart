import 'package:flutter/material.dart';
import 'dart:html' as html;
// Importamos las páginas de ShadowGPT
import 'apps/shadow_gpt/privacy_policy.dart';
import 'apps/shadow_gpt/shadow_gpt_page.dart';

void main() => runApp(const MyPortfolio());

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dokya AI | Dev',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0F0F0F),
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      // ORGANIZACIÓN DE RUTAS POR APP
      routes: {
        '/': (context) => const HomePage(),

        // --- RUTAS DE SHADOW GPT ---
        '/shadow-gpt': (context) => const ShadowGPTPage(),
        '/shadow-gpt/privacy': (context) => const PrivacyPolicyPage(),

        // --- RUTAS DE FUTURAS APPS (Ejemplo) ---
        // '/rstudio-connector': (context) => const RStudioPage(),
        // '/rstudio-connector/privacy': (context) => const RStudioPrivacyPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _launchURL(String url) => html.window.open(url, '_blank');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHero(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
              child: Column(
                children: [
                  const Text("PROYECTOS",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900, letterSpacing: 3)),
                  const SizedBox(height: 40),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      _buildProjectCard(
                        context,
                        title: "ShadowGPT",
                        description: "IA conversacional con interfaz ultra-minimalista optimizada para entornos oscuros.",
                        icon: Icons.nights_stay,
                        color: Colors.deepPurpleAccent,
                        onTap: () => Navigator.pushNamed(context, '/shadow-gpt'),
                      ),
                      _buildProjectCard(
                        context,
                        title: "RStudio AI Connector",
                        description: "Integración de LLMs en RStudio para automatización de scripts en R y Stata.",
                        icon: Icons.code,
                        color: Colors.blueAccent,
                        onTap: () {
                          // Navigator.pushNamed(context, '/rstudio-connector');
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  // ... (Tus widgets _buildHero, _buildProjectCard y _buildFooter se mantienen igual)

  Widget _buildHero() {
    return Container(
      height: 600,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.center,
          radius: 0.8,
          colors: [Colors.blue.withOpacity(0.05), Colors.transparent],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.blueAccent,
            child: Icon(Icons.person, size: 50, color: Colors.white),
          ),
          const SizedBox(height: 20),
          const Text("DOKYA", style: TextStyle(fontSize: 60, fontWeight: FontWeight.w900)),
          const Text("Developing the future of AI interfaces",
              style: TextStyle(fontSize: 18, color: Colors.grey)),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(icon: const Icon(Icons.terminal),
                  onPressed: () => _launchURL("https://github.com/dokya-ai")),
              const SizedBox(width: 20),
              IconButton(icon: const Icon(Icons.email),
                  onPressed: () => _launchURL("mailto:dokysgame@gmail.com")),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProjectCard(BuildContext context, {
    required String title,
    required String description,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: color, size: 40),
          const SizedBox(height: 15),
          Text(title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text(description, style: const TextStyle(color: Colors.grey, height: 1.5)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: color.withOpacity(0.1),
              foregroundColor: color,
              elevation: 0,
              side: BorderSide(color: color.withOpacity(0.5)),
            ),
            child: const Text("Saber más"),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      padding: const EdgeInsets.all(40),
      child: const Text("© 2026 Dokya - Built with Flutter Web",
          style: TextStyle(color: Colors.white24)),
    );
  }
}