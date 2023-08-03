import 'dart:ffi';
import 'package:when_does_optic_play/screens/splash_screen.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;
import 'package:intl/intl.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';
import 'package:when_does_optic_play/screens/main.dart';
import 'package:google_fonts/google_fonts.dart';

class CodUpcomingGames extends StatelessWidget {
  final String opticLogo;
  final String opponentLogo;
  final String time;
  final String event;

  CodUpcomingGames(
      {required this.opticLogo,
      required this.opponentLogo,
      required this.time,
      required this.event});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Container(
        height: 200,
        color: Colors.amber,
        child: Text(" $opticLogo vs $opponentLogo \n $time \n $event"),
      ),
    );
  }
}
