import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:vlx/sign_up.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  final List<PageViewModel> _pageViewModel = [
    PageViewModel(
      titleWidget: Text('Logistics',
          style: GoogleFonts.openSans(
              fontWeight: FontWeight.w700,
              fontSize: 30,
              color: const Color(0xff1A1A1A))),
      bodyWidget: Column(
        children: [
          Image.asset('assets/images/onboard_screen1.png', height: 400),
          Text('vfx logistics brings you closer to your customers',
              style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: const Color(0xff666666)))
        ],
      ),
    ),
    PageViewModel(
      titleWidget: Text('Warehouse',
          style: GoogleFonts.openSans(
              fontWeight: FontWeight.w700,
              fontSize: 30,
              color: const Color(0xff1A1A1A))),
      bodyWidget: Column(
        children: [
          Image.asset('assets/images/onboard_screen2.png', height: 400),
          Text('vfx logistics brings you closer to your customers',
              style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: const Color(0xff666666)))
        ],
      ),
    ),
    PageViewModel(
      titleWidget: Text('Delivery',
          style: GoogleFonts.openSans(
              fontWeight: FontWeight.w700,
              fontSize: 30,
              color: const Color(0xff1A1A1A))),
      bodyWidget: Column(
        children: [
          Image.asset('assets/images/onboard_screen3.png', height: 400),
          Text('vfx logistics brings you closer to your customers',
              style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: const Color(0xff666666))),
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        onDone: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (ctx) => const SignUp(),
              ));
        },
        onSkip: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (ctx) => const SignUp(),
              ));
        },
        showSkipButton: true,
        done: const Icon(Icons.done),
        next: const Icon(Icons.arrow_circle_right_outlined),
        back: const Icon(Icons.arrow_back),
        skip: const Icon(Icons.skip_next),
        pages: _pageViewModel,
      ),
    );
  }
}
