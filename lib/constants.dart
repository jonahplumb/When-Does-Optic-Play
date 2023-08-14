import 'package:flutter/material.dart';

// Color? backgroundColor = Colors.grey[900]; // Background color no limits
const Color backgroundColor = Colors.white;
// const Color backgroundColor = Color(0xFFD7D4D3); // Flutter White
// const Color backgroundColor = Color(0xFF292f33); // Blue Grey

// const Color backgroundColor = Color(0xFF212121); // YT text Primary

// Bottom Nav bar colors
Color bottomNavIcons = Colors.grey.shade800; // Bottom Nav bar Icons

Color bottomNavActive =
    Color.fromARGB(255, 192, 192, 192); // Bottom Nav bar active oval

// Top navigation bar on home screen
Color? chipSelectedColor =
    Colors.grey[700]; // Background color of when chip is selected

// const Color chipSelectedColor = Colors.black;

// const Color chipBackgroundColor = Colors.black; // Background color of chips
// Color? chipBackgroundColor = Colors.grey[700];
Color? chipBackgroundColor = Colors.white;

// Chip Borders
const Color chipSelectedBorder = Colors.white;
// const Color chipSelectedBorder = Color(0xFFa5e65a);

// const Color chiptestgreen = Color(0xFFa5e65a);
const Color chiptestgreen = Color.fromARGB(255, 165, 230, 90);
const Color chipBorder = Colors.transparent;

const BoxDecoration gradientColors = BoxDecoration(
    gradient: LinearGradient(
        colors: [Color(0xFFD7D4D3), chiptestgreen],
        begin: Alignment.centerRight,
        end: Alignment.centerLeft));
