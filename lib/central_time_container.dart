import 'dart:ffi';
import 'package:when_does_optic_play/central_time_text.dart';
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

class CentralTimeContainer extends StatelessWidget {
  const CentralTimeContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Container(
          height: 25,
          width: MediaQuery.of(context).size.width,
          // color: Colors.red,
          child: const CentralTimeText()),
    );
  }
}
