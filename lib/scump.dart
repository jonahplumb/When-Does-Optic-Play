import 'dart:ffi';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

class ScumpButton extends StatelessWidget {
  const ScumpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () async {
        final url = Uri.parse('https://www.twitch.tv/scump');
        if (!await launchUrl(url)) {
          throw 'Could not launch $url';
        }
      },
      label: Text(
        'Scump',
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
