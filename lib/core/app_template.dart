import 'package:flutter/material.dart';
import 'dart:html' as html;

class AppDetailsPage extends StatelessWidget {
  final String title;
  final String description;
  final String iconPath;
  final List<String> screenshots;
  final Color themeColor;
  final String? playStoreUrl;
  final String? appStoreUrl;
  final String? webUrl;
  final VoidCallback? onPrivacyPolicyTap;

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
    this.onPrivacyPolicyTap,
  });

  void _launchURL(String url) => html.window.open(url, '_blank');

  @override
  Widget build(BuildContext context) {
    // Controller para el carrusel
    final PageController _pageController = PageController(viewportFraction: 0.8);

    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // --- HEADER (Icono y Título) ---
            _buildHeader(),

            const SizedBox(height: 60),

            // --- CARRUSEL DE IMÁGENES JPG ---
            const Text("SCREENSHOTS", style: TextStyle(letterSpacing: 4, color: Colors.white38, fontSize: 12)),
            const SizedBox(height: 20),

            SizedBox(
              height: 500, // Altura del carrusel
              child: PageView.builder(
                controller: _pageController,
                itemCount: screenshots.length,
                itemBuilder: (context, index) {
                  return AnimatedBuilder(
                    animation: _pageController,
                    builder: (context, child) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: themeColor.withOpacity(0.1),
                              blurRadius: 20,
                              spreadRadius: 5,
                            )
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            screenshots[index],
                            fit: BoxFit.contain,
                            errorBuilder: (context, error, stackTrace) => Container(
                              color: Colors.white10,
                              child: const Icon(Icons.image_not_supported, color: Colors.white24, size: 50),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),

            // --- BOTÓN DE PRIVACIDAD ---
            if (onPrivacyPolicyTap != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: TextButton(
                  onPressed: onPrivacyPolicyTap,
                  child: const Text("Privacy Policy",
                      style: TextStyle(color: Colors.white24, decoration: TextDecoration.underline)),
                ),
              ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Widget auxiliar para el Header
  Widget _buildHeader() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.asset(iconPath, width: 100, height: 100,
              errorBuilder: (context, e, s) => const Icon(Icons.apps, size: 100)),
        ),
        const SizedBox(height: 20),
        Text(title, style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(description, textAlign: TextAlign.center, style: const TextStyle(color: Colors.grey)),
        ),
        const SizedBox(height: 30),
        // Botones de tiendas (simplificados para el ejemplo)
        if (playStoreUrl != null)
          ElevatedButton.icon(
            onPressed: () => _launchURL(playStoreUrl!),
            icon: const Icon(Icons.play_arrow),
            label: const Text("Get it on Google Play"),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.black),
          ),
      ],
    );
  }
}