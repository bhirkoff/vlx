import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vlx/homepage.dart';
import 'package:vlx/password_reset.dart';
import 'package:vlx/sign_up.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
            child: Column(
              children: [
                const SizedBox(height: 30),
                const Image(image: AssetImage('assets/images/logo.png')),
                const SizedBox(height: 20),
                Text('VFX LOGISTICS',
                    style: GoogleFonts.openSans(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                // const SizedBox(height: 40),
                Image.asset(
                  'assets/images/onboard_screen3.png',
                  height: 200,
                  width: 300,
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                // margin: ,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  children: [
                    // Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                    Text('Welcome Back',
                        style: GoogleFonts.openSans(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff191919))),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Form(
                          child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                                hintText: 'Username or Phone Number',
                                border: OutlineInputBorder()),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                hintText: 'Password',
                                border: OutlineInputBorder()),
                          ),
                          const SizedBox(height: 8),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: 'Forgot password?',
                                style: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    height: 0.9735,
                                    color: const Color(0xff1A1A1A)),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (ctx) =>
                                                const PassReset()));
                                  },
                              )
                            ])),
                          ),
                          const Padding(padding: EdgeInsets.all(5)),
                          Align(
                            alignment: Alignment.centerRight,
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: 'Sign up',
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    height: 0.9735,
                                    color: const Color(0xff1A936F)),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (ctx) => const SignUp()));
                                  },
                              )
                            ])),
                          ),
                        ],
                      )),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      // height: 44,
                      width: 600,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const HomePage()));
                        },
                        child: const Text('LOGIN'),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
