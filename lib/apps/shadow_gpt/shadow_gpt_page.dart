import 'package:flutter/material.dart';
import '../../core/app_template.dart';

class ShadowGPTPage extends StatelessWidget {
  const ShadowGPTPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppDetailsPage(
      title: "ShadowGPT",
      themeColor: Colors.deepPurpleAccent,
      iconPath: "assets/apps/shadow_gpt/icon.png",
      description: "Privacy interface to hide messages from prying eyes using secure gestures.",
      playStoreUrl: "https://play.google.com/store/apps/details?id=com.tu.app", // Tu link futuro
      webUrl: "https://shadowgpt.app",
      screenshots: [
        "assets/apps/shadow_gpt/screen1.jpg",
        "assets/apps/shadow_gpt/screen2.jpg",
      ],
    );
  }
}