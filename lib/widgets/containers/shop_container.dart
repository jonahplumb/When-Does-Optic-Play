import 'dart:ffi';
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

class ShopContainer extends StatelessWidget {
  const ShopContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 310),
      child: Container(
        height: 75,
        // color: Colors.red,
        width: MediaQuery.of(context).size.width,
        alignment: const FractionalOffset(0.34, 0.5),
        child: const OpticStoreButton(),
      ),
    );
  }
}
