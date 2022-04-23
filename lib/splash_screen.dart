import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vlx/onboard_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _timer() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => const PageTwo()));
    });
  }

  @override
  Widget build(BuildContext context) {
    _timer();
    return Scaffold(
      backgroundColor: const Color(0xff1A936F),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/onboard_logo.png',
              width: 196,
              height: 119,
            ),
            const SizedBox(
              height: 28.7,
            ),
            Text('VFX LOGISTICS',
                style: GoogleFonts.openSans(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
            Text('....we move anything, seriously.',
                style: GoogleFonts.openSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
