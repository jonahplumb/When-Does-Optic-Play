import 'dart:ffi';
import 'package:when_does_optic_play/constants.dart';
import 'package:when_does_optic_play/screens/home_apex_tab.dart';
import 'package:when_does_optic_play/screens/home_cod_tab.dart';
import 'package:when_does_optic_play/screens/home_rl_tab.dart';
import 'package:when_does_optic_play/screens/main.dart';
import 'package:when_does_optic_play/widgets/text/cdl.dart';
import 'package:when_does_optic_play/widgets/containers/cdl_container.dart';
import 'package:when_does_optic_play/widgets/text/central_time_text.dart';
import 'package:when_does_optic_play/widgets/containers/eastern_time_container.dart';
import 'package:when_does_optic_play/widgets/containers/pacific_time_container.dart';
import 'package:when_does_optic_play/widgets/text/scump.dart';
import 'package:when_does_optic_play/widgets/containers/scump_container.dart';
import 'package:when_does_optic_play/widgets/text/shop.dart';
import 'package:when_does_optic_play/widgets/containers/central_time_container.dart';
import 'package:when_does_optic_play/widgets/containers/shop_container.dart';
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
import 'package:when_does_optic_play/widgets/containers/teams_container.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _selectedIndex = 0;
  List<String> _chipLabels = ["Call of Duty", "Apex Legends", "Rocket League"];
  final tabs = [
    COD(),
    Apex(),
    RL(),
  ];

  void _onChipSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _chipLabels.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ChoiceChip(
                    label: Text(
                      _chipLabels[index],
                      style: TextStyle(color: Colors.grey[350], fontSize: 14),
                    ),
                    selected: _selectedIndex == index,
                    onSelected: (selected) => _onChipSelected(index),
                    selectedColor: chipSelectedColor,
                    backgroundColor: chipBackgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          16.0), // Adjust the value to change the chip's border radius
                      side: BorderSide(
                        color: _selectedIndex == index
                            ? chipSelectedBorder // Color when chip is selected
                            : chipBorder, // Color when chip is not selected
                        width:
                            2.0, // Adjust the value to change the border width
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          tabs[_selectedIndex]
        ],
      ),
    );
  }
}
