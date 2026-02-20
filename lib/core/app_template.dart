import 'package:flutter/material.dart';
import 'dart:html' as html; // Para abrir los links de las tiendas

class AppDetailsPage extends StatelessWidget {
  final String title;
  final String description;
  final String iconPath;
  final List<String> screenshots;
  final Color themeColor;
  final String? playStoreUrl;
  final String? appStoreUrl;
  final String? webUrl;

  const AppDetailsPage({
    super.key,
    required this.title,
    required this.description,
    required this.iconPath,
    required this.screenshots,
    this.themeColor = Colors.blueAccent,
    this.playStoreUrl,
    this.appStoreUrl,
    this.webUrl,
  });

  void _launchURL(String url) => html.window.open(url, '_blank');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // --- ENCABEZADO: ICONO, NOMBRE Y TIENDAS ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  // Icono con sombra
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: themeColor.withOpacity(0.3), blurRadius: 40, spreadRadius: 5)
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.asset(iconPath, width: 120, height: 120,
                          errorBuilder: (context, e, s) => Container(width: 120, height: 120, color: Colors.grey[900], child: const Icon(Icons.apps, size: 50))),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(title, style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white)),
                  const SizedBox(height: 15),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 600),
                    child: Text(description, textAlign: TextAlign.center, style: TextStyle(fontSize: 18, color: Colors.grey[400], height: 1.5)),
                  ),
                  const SizedBox(height: 30),

                  // BOTONES DE TIENDAS
                  Wrap(
                    spacing: 15,
                    runSpacing: 15,
                    alignment: WrapAlignment.center,
                    children: [
                      if (playStoreUrl != null) _buildStoreButton("Google Play", Icons.shop, () => _launchURL(playStoreUrl!)),
                      if (appStoreUrl != null) _buildStoreButton("App Store", Icons.apple, () => _launchURL(appStoreUrl!)),
                      if (webUrl != null) _buildStoreButton("Web Demo", Icons.language, () => _launchURL(webUrl!)),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 60),

            // --- CARRUSEL DE CAPTURAS ---
            const Text("SCREENSHOTS", style: TextStyle(letterSpacing: 3, fontWeight: FontWeight.w300, color: Colors.white70)),
            const SizedBox(height: 20),
            SizedBox(
              height: 500,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: screenshots.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(screenshots[index], fit: BoxFit.contain,
                          errorBuilder: (context, e, s) => Container(width: 250, color: Colors.white, child: const Icon(Icons.image_not_supported))),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }

  Widget _buildStoreButton(String label, IconData icon, VoidCallback onPressed) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 20),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}