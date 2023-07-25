import 'dart:ffi';
import 'package:when_does_optic_play/widgets/text/pacific_time_text.dart';
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

// class PacificTimeContainer extends StatelessWidget {
//   const PacificTimeContainer({Key? key}) : super(key: key);
// 
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 0),
//       child: Container(
//           height: 25,
//           width: MediaQuery.of(context).size.width,
//           // color: Colors.red,
//           child: const PacificTimeText()),
//     );
//   }
// }
