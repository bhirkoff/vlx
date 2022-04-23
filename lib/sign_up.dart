import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vlx/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _passwordController =
      TextEditingController(text: '');

  get fontWeight => null;
  // String email = '';
  // final bool isValid = EmailValidator.validate('');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Center(
                child: Image(
                    image: AssetImage('assets/images/logo.png'), height: 80)),
            const SizedBox(height: 25),
            const Text(
              'Create an Account',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 36),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Full Name',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Input your name';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  hintText: 'Email', border: OutlineInputBorder()),
              validator: (mail) {
                if (mail!.isEmpty) {
                  return 'Invalid Email';
                }
                return null;
                // if (mail != isValid) {
                //   return 'Enter a valid email';
                // }
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Phone Number', border: OutlineInputBorder()),
              validator: (val) {
                if (val!.isEmpty) {
                  return 'Enter a phone number';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              obscureText: true,
              controller: _passwordController,
              decoration: const InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
              ),
              onSaved: (val) {
                //
              },
              validator: (val) {
                if (val!.isEmpty) {
                  return 'Enter a password';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Confirm Password',
                border: OutlineInputBorder(),
              ),
              validator: (val) {
                if (val != _passwordController.text) {
                  return 'Password mismatch';
                }
                return null;
              },
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 600,
              height: 44,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                onPressed: () {
                  if (!_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('please, input all fields correctly')));
                    return;
                  }
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const Login()));
                },
                child: Text('CREATE',
                    style: GoogleFonts.openSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white)),
              ),
            ),
            const SizedBox(height: 40),
            RichText(
                text: TextSpan(
              children: [
                TextSpan(
                  text: 'Already have an account?',
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      height: 0.9735),
                ),
                TextSpan(
                  text: ' Sign in',
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      height: 0.9735,
                      color: const Color(0xff1A936F)),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => const Login()));
                    },
                )
              ],
            )),
            const SizedBox(height: 70),
          ],
        ),
      ),
    ));
  }
}
