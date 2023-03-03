import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user/pages/login.dart';
import 'package:user/pages/signup.dart';

class FrontPage extends StatefulWidget{
  const FrontPage({Key? key}): super(key:key);
  @override
  State<FrontPage> createState() => FrontPageState();
}

class FrontPageState extends State<FrontPage>{

  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.lightBlueAccent, Colors.lightGreenAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome',
                style: TextStyle(fontSize: 24.0),
              ),
              const SizedBox(height: 70.0),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.lightBlueAccent, Colors.lightGreenAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: navigateToLoginPage,
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: Colors.blue,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50.0, vertical: 20.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        onHover: (value) {
                          setState(() {
                            isHovered = value;
                          });
                        },
                      ),
                      const SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: () => navigateToSignupPage(context),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        onHover: (value) {
                          setState(() {
                            isHovered = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
//----------------Footer starts here---------------------------->
          const SizedBox(height: 70.0),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            decoration: const BoxDecoration(
              color: Colors.transparent,
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.withOpacity(0.3),
              //     blurRadius: 5,
              //     spreadRadius: 2,
              //     offset: const Offset(0, -2),
              //   ),
              // ],
            ),
            child: const Text(
              'Copyright © 2023 [B inc.]. All rights reserved.',
              style: TextStyle(fontSize: 12.0),
            ),
          ),
//----------------Footer ends here---------------------------->
            ],
          ),
        ),
      ),
    );
  }

  void navigateToLoginPage() async {
    final login= await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }
}

void navigateToSignupPage(BuildContext context) async {
  final signup = await Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SignupPage()),
  );
}


