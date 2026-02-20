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
                const Text("Last Updated: February 18, 2026",
                    style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic)),
                const Divider(height: 50, color: Colors.white10),

                _buildSection("1. Introduction",
                    "Welcome to ShadowGPT. We are committed to protecting your personal information and your right to privacy. This Privacy Policy explains how we collect, use, and disclose information when you use our mobile application, which provides AI-assisted messaging and private communication services."),

                _buildSection("2. Information We Collect",
                    "• Personal Data: We do not collect personal identity information (such as your name or address) unless you explicitly provide it. If you use our 'Pro' features, transaction data is handled securely by Google Play Billing.\n\n"
                        "• Chat Data: Your private chats are stored locally on your device or encrypted. We do not have access to your private conversations.\n\n"
                        "• Usage Data: We may collect anonymous technical data (device model, OS version) to improve the app's performance on platforms like Windows 11 and Android."),

                _buildSection("3. Permissions",
                    "To provide our core features, the app may request:\n"
                        "• Storage Access: To save and encrypt your chat history locally.\n"
                        "• Internet Access: To communicate with AI models and process subscriptions."),

                _buildSection("4. Third-Party Services",
                    "We use the following third-party services that may collect data:\n"
                        "• Google Play Services: For app functionality and updates.\n"
                        "• AdMob: To display advertisements (for non-Pro users).\n"
                        "• RevenueCat / Google Play Billing: To manage secure in-app purchases and subscriptions."),

                _buildSection("5. Data Security",
                    "ShadowGPT implements industry-standard encryption to ensure that your 'hidden' chats remain private. Since data is primarily stored on-device, the security of your chats also depends on your device's security settings."),

                _buildSection("6. Children's Privacy",
                    "Our services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children."),

                _buildSection("7. Contact Us",
                    "If you have any questions about this Privacy Policy, please contact us at: dokysgame@gmail.com"),

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