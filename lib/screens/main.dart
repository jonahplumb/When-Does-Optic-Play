import 'dart:ffi';
import 'package:when_does_optic_play/screens/home.dart';
import 'package:when_does_optic_play/widgets/text/cdl.dart';
import 'package:when_does_optic_play/screens/splash_screen.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'dart:ui' as ui;
import 'package:intl/intl.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:when_does_optic_play/screens/home_cod_tab.dart';
import 'package:when_does_optic_play/screens/main_screen.dart';

void main() async {
  await dotenv.load();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // fontFamily: 'MyCustomFont', //Optic Font
          ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var isLoaded = false;
  double? data;

  void initState() {
    super.initState();
  }

  Future<List<double>> getData() async {
    final data = 2.0;
    final value = [data];
    return value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: FutureBuilder<List<dynamic>>(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          } else {
            return const MainScreen();
          }
        },
      ),
    );
  }
}
