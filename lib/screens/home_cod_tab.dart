import 'dart:ffi';
import 'package:when_does_optic_play/widgets/cod_upcoming.dart';
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
import 'package:when_does_optic_play/screens/main.dart';
import 'package:when_does_optic_play/widgets/containers/teams_container.dart';
import 'package:google_fonts/google_fonts.dart';

class COD extends StatelessWidget {
  COD({Key? key}) : super(key: key);

  // These values are being hard coded initially
  // Values will be read from database, once my firebase database is implemented

  List<List<String>> _CodGames = [
    ['assets/OPTIC.png', 'assets/LAT.png', '7:00 pm', 'Major 1'],
    ['assets/OPTIC.png', 'assets/BOS.png', '7:00 pm', 'Major 1'],
    ['assets/OPTIC.png', 'assets/SURGE.png', '7:00 pm', 'Major 1'],
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  // color: Colors.grey[850],
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Countdown",
                        style: TextStyle(color: Colors.white, fontSize: 38),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/OPTIC.png",
                          height: 135,
                          width: 135,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "vs",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "7:00 pm",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/LAT.png",
                          height: 135,
                          width: 135,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Upcoming",
                  style: TextStyle(
                      color: Color.fromARGB(255, 224, 221, 221),
                      fontWeight: FontWeight.bold,
                      fontSize: 38),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            //row
            //listview builder
            Column(
              children: [
                Container(
                  height: 355,
                  child: ListView.builder(
                    itemCount: _CodGames.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(10),
                        child: CodUpcomingGames(
                            opticLogo: _CodGames[index][0],
                            opponentLogo: _CodGames[index][1],
                            time: _CodGames[index][2],
                            event: _CodGames[index][3]),
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}










// class CountdownWidget extends StatefulWidget {
//   const CountdownWidget({Key? key}) : super(key: key);
// 
//   // This method allows me to access teams, in the container file
//   static String get teams {
//     return _CountdownWidgetState.teams;
//   }
// 
//   // This method allows me to access Eastern Time, in the container file
//   static String get estTime {
//     return _CountdownWidgetState.estTime;
//   }
// 
//   // This method allows me to access Central Time, in the container file
//   static String get cstTime {
//     return _CountdownWidgetState.cstTime;
//   }
// 
//   // This method allows me to access Pacific Time, in the container file
//   static String get pstTime {
//     return _CountdownWidgetState.pstTime;
//   }
// 
//   @override
//   _CountdownWidgetState createState() => _CountdownWidgetState();
// }
// 
// class _CountdownWidgetState extends State<CountdownWidget> {
//   final DateTime _countdown = DateTime.parse("2023-09-30 16:52:00");
//   late Duration _timeLeft;
//   late StreamController<Duration> _controller;
//   late Stream<Duration> _stream;
//   final DateFormat formatter = DateFormat('h:mm a z');
//   // var isLoaded = false;
// 
//   // These are static hardcoded values,
//   // they will be replaced once API is created and implemented
//   static String teams = 'Optic vs LAT';
//   static String estTime = '7:00pm';
//   static String cstTime = '6:00pm';
//   static String pstTime = '4:00pm';
// 
//   final String apikey = dotenv.env['API_KEY'] ?? 'API Key not found';
// 
//   @override
//   void initState() {
//     super.initState();
//     _controller = StreamController<Duration>();
//     _stream = _controller.stream;
//     _startTimer();
//   }
// 
//   @override
//   void dispose() {
//     _controller.close();
//     super.dispose();
//   }
// 
//   void _startTimer() {
//     Timer.periodic(const Duration(seconds: 1), (timer) {
//       final now = DateTime.now();
//       if (_countdown.isBefore(now)) {
//         timer.cancel();
//         _controller.add(Duration.zero);
//       } else {
//         _controller.add(_countdown.difference(now));
//       }
//     });
//   }
// 
//   String _twoDigits(int n) {
//     if (n >= 10) return "$n";
//     return "0$n";
//   }
// 
//   String get _timeLeftString {
//     if (_timeLeft == Duration.zero) {
//       return "Gametime";
//     }
// 
//     final days = _timeLeft.inDays;
//     final hours = _timeLeft.inHours.remainder(24);
//     final minutes = _timeLeft.inMinutes.remainder(60);
//     final seconds = _timeLeft.inSeconds.remainder(60);
// 
//     return "${_twoDigits(days)}:${_twoDigits(hours)}:${_twoDigits(minutes)}:${_twoDigits(seconds)}";
//   }
// 
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<Duration>(
//       stream: _stream,
//       builder: (BuildContext context, AsyncSnapshot<Duration> snapshot) {
//         if (snapshot.hasData) {
//           _timeLeft = snapshot.data!;
//           return Stack(alignment: Alignment.topCenter, children: [
//             Container(
//               decoration: const BoxDecoration(
//                   image: DecorationImage(
//                       // image: AssetImage('assets/background-test.jpg'),
//                       // image: AssetImage('assets/ogla.jpg'),
//                       image: AssetImage('assets/optic-mw2.jpg'),
//                       fit: BoxFit.cover)),
//             ),
//             Column(
//               children: <Widget>[
//                 ///////// This is the Text for the countdown/gametime
//                 Padding(
//                   padding: const EdgeInsets.only(top: 75),
//                   child: Container(
//                     height: 55,
//                     width: MediaQuery.of(context).size.width,
//                     // color: Colors.red,
//                     child: Text(
//                       _timeLeftString,
//                       textAlign: TextAlign.center,
//                       style: const TextStyle(color: Colors.white, fontSize: 39),
//                     ),
//                   ),
//                 ),
//                 // This is the Text Dispalying "Optic vs ....."
//                 const TeamsContainer(),
//                 // This is the Text displaying the Gametime in Eastern time
//                 const EasternTimeContainer(),
//                 // This is the Text displaying the Gametime in Central time
//                 const CentralTimeContainer(),
//                 // This is the Text displaying the Gametime in Pacific time
//                 const PacificTimeContainer(),
//                 ///////// This is the Optic Store Button
//                 const ShopContainer(),
//                 ///////// This is the Scump Button
//                 const ScumpContainer(),
//                 //////// This is the CDL Button
//                 const CDLContainer(),
//               ],
//             )
//           ]);
//         } else {
//           return const SplashScreen(); // This is the loading/splash screen
//         }
//       },
//     );
//   }
// }
