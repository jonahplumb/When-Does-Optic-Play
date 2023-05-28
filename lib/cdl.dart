import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;

class CDLButton extends StatelessWidget {
  const CDLButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () async {
        final url = Uri.parse('https://www.twitch.tv/callofduty');
        if (!await launchUrl(url)) {
          throw 'Could not launch $url';
        }
      },
      label: const Text(
        'CDL',
        style: TextStyle(
          fontSize: 40, // increased font size
          color: Colors.white,
        ),
      ),
      icon: ColorFiltered(
        // Use ColorFiltered widget to apply the white color filter on the Twitch icon.
        colorFilter: ColorFilter.mode(Colors.white, ui.BlendMode.modulate),
        child: Image.asset(
          "assets/twitch.png",
          width: 55,
          height: 36,
        ),
      ),
      style: ElevatedButton.styleFrom(),
    );
  }
}
