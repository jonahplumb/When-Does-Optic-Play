import 'dart:ffi';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;
import 'package:intl/intl.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class OpticStoreButton extends StatelessWidget {
  const OpticStoreButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () async {
        final url = Uri.parse(
            'https://shop.opticgaming.com/collections/optic-texas-jerseys');
        if (!await launchUrl(url)) {
          throw 'Could not launch $url';
        }
      },
      label: const Text(
        'Shop',
        style: TextStyle(
          fontSize: 40, // increased font size
          color: Colors.white,
        ),
      ),
      icon: ColorFiltered(
        // Use ColorFiltered widget to apply the white color filter on the Twitch icon.
        colorFilter: ColorFilter.mode(Colors.white, ui.BlendMode.modulate),
        child: Image.asset(
          "assets/shop-cart-2.png",
          width: 55,
          height: 45,
        ),
      ),
      style: ElevatedButton.styleFrom(),
    );
  }
}
