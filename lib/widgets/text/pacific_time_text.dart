import 'package:when_does_optic_play/screens/main.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;
import 'package:intl/intl.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:when_does_optic_play/widgets/text/cdl.dart';
import 'package:when_does_optic_play/widgets/text/scump.dart';
import 'package:when_does_optic_play/widgets/text/shop.dart';
import 'package:when_does_optic_play/screens/home_cod_tab.dart';

// class PacificTimeText extends StatelessWidget {
//   const PacificTimeText({Key? key}) : super(key: key);
// 
//   // String pacificTime = CountdownWidget.pstTime;
// 
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       '${CountdownWidget.pstTime} PST',
//       textAlign: TextAlign.center,
//       style: const TextStyle(color: Colors.white, fontSize: 20),
//     );
//   }
// }
