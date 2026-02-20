import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      appBar: AppBar(
        title: const Text("Privacy Policy", style: TextStyle(color: Colors.white70)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Privacy Policy",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white)),
                const SizedBox(height: 10),
                const Text("Last Updated: February 20, 2026",
                    style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic)),
                const Divider(height: 50, color: Colors.white10),

                _buildSection("1. Introduction",
                    "Welcome to ShadowGPT. We are committed to protecting your personal information and your right to privacy. This Privacy Policy explains how we collect, use, and handle information when you use our mobile application, which provides camouflaged messaging interfaces and private communication features."),

                // SECCIÓN CLAVE: PROCESAMIENTO LOCAL
                _buildSection("2. Core Functionality & Local Processing (Crucial Disclaimer)",
                    "ShadowGPT operates under a strict privacy-first model:\n\n"
                        "• 100% Local Processing: All automated responses, scripts, and camouflage features are generated locally on your device. We do not use cloud AI servers, and we do not transmit your messages over the internet to generate responses.\n\n"
                        "• No Cloud Storage: Your private chats and intercepted notifications are stored exclusively in a secure, local database on your device. We do not have access to your private conversations, and they never leave your phone."),

                _buildSection("3. Permissions We Request",
                    "To provide our core features, the app requires specific permissions:\n\n"
                        "• Notification Access (NotificationListenerService): This is the core permission required for the app to function. We use this permission strictly to intercept incoming messages (from apps like WhatsApp) so they can be camouflaged and displayed within ShadowGPT. The data read from these notifications is processed and stored entirely offline on your device. We do not collect, share, or transmit this data to any external servers.\n\n"
                        "• Advertising ID Permission: Required for Android 13+ devices to serve personalized or non-personalized ads (for non-Pro users)."),

                _buildSection("4. Information Handled by Third-Party Services",
                    "While your chats remain completely offline, the app requires an internet connection solely to operate the following approved third-party services:\n\n"
                        "• Google AdMob: To display advertisements. AdMob may collect your device's Advertising ID and anonymous usage data.\n\n"
                        "• RevenueCat & Google Play Billing: To securely manage in-app purchases and 'Pro' subscriptions. We do not collect or store your credit card information."),

                _buildSection("5. Data Security & Retention",
                    "Because your chat data is stored locally via SQLite database on your device, the security of your chats depends directly on your device's security settings (such as screen locks or biometrics). You can delete your chat history at any time from within the app, which permanently erases the data from your device's local storage."),

                _buildSection("6. Children's Privacy",
                    "Our services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children."),

                _buildSection("7. Contact Us",
                    "If you have any questions about this Privacy Policy or how your data is handled locally, please contact us at: dokysgame@gmail.com"),

                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
          const SizedBox(height: 12),
          Text(content,
              style: const TextStyle(fontSize: 16, color: Colors.white70, height: 1.6)),
        ],
      ),
    );
  }
}