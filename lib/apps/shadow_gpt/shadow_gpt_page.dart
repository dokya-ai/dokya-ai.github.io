import 'package:flutter/material.dart';
import '../../core/app_template.dart';
import 'privacy_policy.dart';

class ShadowGPTPage extends StatelessWidget {
  const ShadowGPTPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppDetailsPage(
      title: "ShadowGPT",
      themeColor: Colors.deepPurpleAccent,
      iconPath: "assets/apps/shadow_gpt/icon.png",
      description: "AI-assisted messaging with top-tier encryption and a minimalist dark interface.",
      playStoreUrl: "https://play.google.com/store/apps/details?id=com.dokya.shadowgpt",
      // Asegúrate de que estos nombres coincidan con tus archivos JPG en assets
      screenshots: const [
        "assets/apps/shadow_gpt/screen1.jpg",
        "assets/apps/shadow_gpt/screen2.jpg",
      ],
      onPrivacyPolicyTap: () {
        Navigator.pushNamed(context, '/privacy');
      },
    );
  }
}