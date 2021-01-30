import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'pages/friends/frndlist.dart';
import 'pages/friends/leaderboard.dart';
import 'pages/profiles/profile.dart';
import 'pages/Schedule.dart';
import 'widgets/nav-bar.dart';
import 'package:gameify/pages/screen/home.dart';
import 'package:gameify/pages/screen/splash.dart';
import 'package:gameify/pages/screen/auth.dart';
import 'dart:async';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return       MaterialApp(
      title: 'Scheduler App',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes:<String, WidgetBuilder> {
        '/home': (context) => HomePage(),
        "/auth": (context) => AuthScreen(),
        '/profile': (context) => Profile(),
        '/leaderboard': (context) => Leaderbo(),
        '/friendlist': (context) => friendlist(),
        '/scheduler': (context) => scheduler(),
      },
    );
  }
}



