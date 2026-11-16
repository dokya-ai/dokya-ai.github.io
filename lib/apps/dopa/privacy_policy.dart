import 'package:flutter/material.dart';

class DopaPrivacyPolicyPage extends StatelessWidget {
  const DopaPrivacyPolicyPage({super.key, required this.openUrl});

  final void Function(String url) openUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      appBar: AppBar(
        title: const Text(
          'Dopa Privacy Policy',
          style: TextStyle(color: Colors.white70),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SelectionArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 36),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 900),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Dopa Privacy Policy',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Effective date: November 6, 2026  ·  Last updated: November 6, 2026',
                    style: TextStyle(
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const Divider(height: 48, color: Colors.white10),
                  _section(
                    '1. Controller and contact',
                    paragraphs: const [
                      'App controller: Dokys Game\nApp name: Dopa\nPrivacy contact: dokysgame@gmail.com',
                      'The controller is responsible for keeping this information up to date.',
                    ],
                  ),
                  _section(
                    '2. Summary',
                    paragraphs: const [
                      'Dopa does not have user accounts or its own server to which it sends the name chosen by the user, selected apps, protection history, tasks, PDF files, or reading progress. This information is processed and stored on the device to provide the app’s features.',
                      'The exception is advertising: when an ad is requested, Dopa integrates Google’s Google Mobile Ads SDK. That SDK may collect and send Google certain device, app-usage, and ad-interaction data to provide, measure, and protect the advertising service. Android backups enabled by the user may also apply, as explained below.',
                    ],
                  ),
                  _section(
                    '3. Data Dopa processes on the device',
                    paragraphs: const [
                      'Depending on the features used, Dopa may process and store the following categories locally:',
                    ],
                    bullets: const [
                      'Optional name or nickname: text entered by the user to personalize the experience. It is stored on the device and is not sent to the developer.',
                      'Available and selected apps: Android provides the names, icons, and package names of apps that can be launched. The list is shown so the user can choose which apps to protect. Dopa stores the selection, not a persistent copy of the entire inventory it queried.',
                      'Protection data: when the accessibility service is enabled, it receives window-change events and the associated package name to identify the app in the foreground. Dopa uses this information to count time in selected apps, show a pause when the allowance runs out, and store daily usage of protected apps locally.',
                      'Blocking history: for selected apps, Dopa may store the date and time of a block, challenge results, and whether the user chose to return to the blocked app. This history supports Dopa’s progress screens.',
                      'Usage data for averages: if the user grants optional access to Android usage data, Dopa may query the foreground time of an app for recent full days to show averages. When the user confirms adding a protected app, its initial average may be stored on the device as a reference.',
                      'Plan and progress: enabled games, number and difficulty of tasks, completed tasks, rewards, and time balance.',
                      'Reading library: imported PDF files are copied to the app’s private storage. Library details such as title, page count, current page, reading time, and related rewards are also stored. Dopa does not send these documents to the developer or Google Mobile Ads.',
                      'App preferences and state: language, theme, settings, tutorial steps, and a local usage-day counter used to determine when banner ads may be requested.',
                    ],
                  ),
                  _section(
                    '4. Permissions and accessibility service',
                    paragraphs: const [
                      'The accessibility service is intended to detect changes in the foreground app and present Dopa’s pause. The implementation does not need to read text from other apps, inspect their visual elements, take screenshots, press controls, or perform gestures in them. The permission is enabled in Android Settings and can be disabled there.',
                      'Usage-statistics access and notifications are separate permissions. Averages can be used without granting usage-statistics access, although they will not be available; notifications are not required to use protection.',
                    ],
                  ),
                  _section(
                    '5. Advertising and Google Mobile Ads',
                    paragraphs: const [
                      'Dopa may show Google Mobile Ads banners on Android. Banners are requested only in locations enabled by the app and after the configured usage-day threshold. The version described in this policy does not use interstitial or rewarded ads.',
                      'When ads are loaded or displayed, Google’s SDK may automatically collect and share with Google data such as:',
                    ],
                    bullets: const [
                      'IP address, which Google may use to estimate a general location.',
                      'Interactions with the app and ads, such as launches, taps, and ad views.',
                      'App or SDK diagnostics and performance information.',
                      'Device or account identifiers, such as Android Advertising ID or App Set ID, depending on configuration, availability, and SDK version.',
                    ],
                  ),
                  _body(
                    'Google says data collected by the Google Mobile Ads SDK is encrypted in transit. Google and relevant advertising providers may use data under applicable ad settings, privacy and consent choices, and their own policies to serve ads, measure performance, prevent fraud, and maintain the service. Dopa does not send Google Mobile Ads the optional name, protected-app list, protected usage history, PDFs, or reading progress as app-provided data; however, the SDK may record general interactions with Dopa and with ads.',
                  ),
                  _link(
                    'Google Privacy Policy',
                    'https://policies.google.com/privacy',
                  ),
                  _link(
                    'How Google uses information from sites or apps that use its services',
                    'https://policies.google.com/technologies/partner-sites',
                  ),
                  _link(
                    'Google Mobile Ads data disclosure for Google Play',
                    'https://developers.google.com/admob/android/privacy/play-data-disclosure',
                  ),
                  _body(
                    'Ad and identifier options may also depend on Android privacy controls and consent settings applicable in the user’s country. Google Play’s Data safety section should describe the actual SDK and version and be updated if its configuration changes.',
                  ),
                  _section(
                    '6. Android backups',
                    paragraphs: const [
                      'Dopa does not operate its own synchronization service. However, Dopa is not expressly excluded from Android system backups in the current Android configuration. If Android backup is enabled, Android may include certain private app data, such as preferences and compatible files, in a backup associated with the user’s Google Account and restore it to a device. The availability, protection, retention, and deletion of those backups depend on Android, the device, and the user’s backup settings; Dopa does not manage them.',
                    ],
                  ),
                  _link(
                    'Android Auto Backup: included data and backup controls',
                    'https://developer.android.com/identity/data/autobackup',
                  ),
                  _body(
                    'Users can review or disable backups in Android backup settings. This system backup is separate from the transmission Google Mobile Ads performs to provide advertising.',
                  ),
                  _section(
                    '7. Purposes and permissions',
                    paragraphs: const [
                      'Dopa processes the local data described above to:',
                    ],
                    bullets: const [
                      'Show and manage the apps the user chooses to protect.',
                      'Track usage time for those apps and activate a pause when the limit is reached.',
                      'Prepare tasks, manage rewards, and show progress.',
                      'Store the PDF library and reading progress on the device.',
                      'Remember preferences and setup state.',
                      'Show ads, measure their performance, and prevent advertising fraud through Google Mobile Ads, where applicable.',
                    ],
                  ),
                  _body(
                    'Affirmative consent and Android permissions are requested to enable features that require the accessibility service or usage-statistics access. Users may decline optional permissions and continue using features that do not depend on them.',
                  ),
                  _section(
                    '8. Sharing and recipients',
                    paragraphs: const [
                      'Dopa’s code does not include a developer-operated server or an app-owned analytics or synchronization system that receives the local data described in Section 3. Third-party communication is limited to Google services required for ads and Android backups that may occur according to device settings. Google processes advertising SDK information under its own terms and policies.',
                      'Dopa does not sell local protection data, PDF documents, or personal reading history. It does not share them with advertisers through its own server.',
                    ],
                  ),
                  _section(
                    '9. Retention and deletion',
                    paragraphs: const [
                      'Local data remains on the device while the user keeps the app and does not delete it. There is no automatic expiration date for local history. Ads and data processed by Google are retained under Google’s policies and controls, not Dopa’s local storage mechanisms.',
                      'To erase Dopa’s local information, users can select Settings > Delete my data in the app. This removes the library and its PDF copies, task plan and progress, optional name, selected apps, usage and blocking histories, and time settings. The accessibility-service permission and other permissions managed by Android are not revoked automatically; they are managed in the device settings.',
                      'Deleting data within Dopa does not erase information already processed by Google Mobile Ads or backups Android created before deletion. Users should use the Google and Android controls linked in this policy to manage that information. Uninstalling the app also does not guarantee immediate deletion of backups managed by Android or advertising data managed by Google.',
                      'Dopa does not offer account creation. Therefore, it does not maintain developer-server accounts that need to be deleted.',
                    ],
                  ),
                  _section(
                    '10. Security',
                    paragraphs: const [
                      'Local data is stored in the app’s private areas, protected by Android and its app-isolation controls. Dopa does not keep a copy on its own servers. Transmission associated with Google Mobile Ads is handled by Google’s SDK; Google says it encrypts data collected by that SDK in transit. No storage or transmission method can guarantee absolute security, so users should also protect their device and Google Account.',
                    ],
                  ),
                  _section(
                    '11. Children’s privacy',
                    paragraphs: const [
                      'Intended audience and minimum age: Dopa is intended for people over 16 years of age. Dopa does not ask users to enter identifying information to create an account. The Google Play listing and age rating should match this audience. If the app is directed to children or included in the Designed for Families program, this policy, the Data safety form, and advertising SDKs must meet Google Play’s additional requirements before publication.',
                    ],
                  ),
                  _section(
                    '12. Rights and controls',
                    paragraphs: const [
                      'Users can review and change selected apps, revoke permissions through Android, delete local data in the app, and manage backups in device settings. For privacy questions or requests, contact the controller at dokysgame@gmail.com. The controller will handle requests in accordance with the laws applicable where the user resides.',
                    ],
                  ),
                  _section(
                    '13. Changes to this policy',
                    paragraphs: const [
                      'This policy may be updated if Dopa’s features, advertising integrations, or legal obligations change. The current version will be available at the public URL listed on Google Play and accessible from the app. If a change materially affects data processing, the relevant disclosures and consents will also be updated before the new feature is used.',
                    ],
                  ),
                  _section(
                    '14. Contact',
                    paragraphs: const [
                      'For questions about this policy or data handling, email dokysgame@gmail.com with “Privacy - Dopa” in the subject line.',
                    ],
                  ),
                  const SizedBox(height: 36),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  static Widget _section(
    String title, {
    List<String> paragraphs = const [],
    List<String> bullets = const [],
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          const SizedBox(height: 12),
          for (final paragraph in paragraphs) ...[
            _body(paragraph),
            const SizedBox(height: 12),
          ],
          for (final bullet in bullets) _bullet(bullet),
        ],
      ),
    );
  }

  static Widget _body(String text) => Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: Text(
      text,
      style: const TextStyle(fontSize: 16, color: Colors.white70, height: 1.6),
    ),
  );

  static Widget _bullet(String text) => Padding(
    padding: const EdgeInsets.only(left: 8, bottom: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '•  ',
          style: TextStyle(fontSize: 16, color: Colors.white70, height: 1.6),
        ),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white70,
              height: 1.6,
            ),
          ),
        ),
      ],
    ),
  );

  Widget _link(String label, String url) => Padding(
    padding: const EdgeInsets.only(left: 8, bottom: 10),
    child: InkWell(
      onTap: () => openUrl(url),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.lightBlueAccent,
          decoration: TextDecoration.underline,
        ),
      ),
    ),
  );
}
