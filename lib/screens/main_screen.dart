import 'dart:ffi';
import 'package:when_does_optic_play/screens/home.dart';
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
import 'package:when_does_optic_play/screens/home_cod_tab.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:when_does_optic_play/constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  // final DateTime _countdown = DateTime.parse("2023-09-30 16:52:00");

  /// These tabs routes are for the bottom navigation bar
  ///
  final tabs = [
    HomePage(),
    Placeholder(
      color: Colors.red,
    ),
    Placeholder(
      color: Colors.green,
    ),
    Placeholder(
      color: Colors.orange,
    )
  ];
  // Tracking the current tab a user is on
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          color: backgroundColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: GNav(
                gap: 8,
                backgroundColor: Colors.transparent,
                color: bottomNavIcons,
                activeColor: bottomNavIcons,
                tabBackgroundColor: bottomNavActive,
                padding: EdgeInsets.all(16),
                mainAxisAlignment: MainAxisAlignment.center,
                selectedIndex: _currentIndex,
                onTabChange: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.link,
                    text: 'Links',
                  ),
                  GButton(
                    icon: Icons.show_chart,
                    text: 'Portfolio',
                  ),
                  GButton(icon: Icons.settings, text: 'Settings')
                ]),
          ),
        ),
        // backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0.0,
        ),
        body: tabs[_currentIndex]);
  }
}
