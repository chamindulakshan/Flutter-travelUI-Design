import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui/screens/homepage_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Travel',
                    style: GoogleFonts.pacifico(
                        color: Colors.white, fontSize: 40)),
                const SizedBox(
                  width: 8,
                ),
                const Icon(
                  Icons.travel_explore_rounded,
                  color: Colors.white,
                  size: 45,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Find Your Dream Destination With Us',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
