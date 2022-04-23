import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vlx/login.dart';

class PassReset extends StatefulWidget {
  const PassReset({Key? key}) : super(key: key);

  @override
  State<PassReset> createState() => _PassResetState();
}

class _PassResetState extends State<PassReset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Image.asset('assets/images/logo.png'),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Text('Forgot password? We got ya!',
              style: GoogleFonts.openSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff333333))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'Please, enter your registered phone number or rmail to reset your password.',
                style: GoogleFonts.openSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff4D4D4D))),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Phone Number or Email',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const Login()));
              },
              child: Text('RESET',
                  style: GoogleFonts.openSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.white)))
        ],
      ),
    );
  }
}
