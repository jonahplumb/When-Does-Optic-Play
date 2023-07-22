import 'dart:ffi';
import 'package:when_does_optic_play/main.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/optic-mw2.jpg'),
                  fit: BoxFit.cover)),
        ),
        // Image.asset(
        //   // 'assets/OpticTexas_360.png',
        //   'assets/optic-mw2.jpg',
        //   fit: BoxFit.cover,
        //   // fit: BoxFit.contain,
        //   height: 275,
        //   width: 275,
        //   alignment: Alignment.center,
        // ),
        const Padding(
          padding: EdgeInsets.only(top: 0, bottom: 275, left: 0),
          child: CircularProgressIndicator(
              color: Colors.white,
              backgroundColor: Color.fromRGBO(147, 201, 81, 100)),
        ),
        // Positioned(top: 120, child: const CircularProgressIndicator())
      ],
    ));
  }
}
