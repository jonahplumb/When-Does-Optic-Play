import 'package:when_does_optic_play/main.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;
import 'package:intl/intl.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:when_does_optic_play/cdl.dart';
import 'package:when_does_optic_play/scump.dart';
import 'package:when_does_optic_play/shop.dart';

class EasternTimeText extends StatelessWidget {
  const EasternTimeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${CountdownWidget.estTime} EST',
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.white, fontSize: 20),
    );
  }
}
