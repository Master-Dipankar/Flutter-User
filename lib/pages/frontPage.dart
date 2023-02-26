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
    MaterialPageRoute(builder: (context) => SignupPage()),
  );
}



////////////////////////////////////////////////WORKING////////////////////////////////////////////////////////////////////////////
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:user/pages/login.dart';
//
// class FrontPage extends StatefulWidget{
//   const FrontPage({Key? key}): super(key:key);
//   @override
//   State<FrontPage> createState() => FrontPageState();
// }
//
// class FrontPageState extends State<FrontPage>{
//
//   bool isHovered = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Colors.lightBlueAccent, Colors.lightGreenAccent],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 'Welcome',
//                 style: TextStyle(fontSize: 24.0),
//               ),
//               const SizedBox(height: 70.0),
//               Container(
//                 constraints: const BoxConstraints.tightFor(width: 500.0),
//                 height: 650.0,
//                 alignment: Alignment.center,
//                 decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [Colors.lightBlueAccent, Colors.lightGreenAccent],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//                   // borderRadius: BorderRadius.circular(20.0),
//                   // boxShadow: isHovered
//                   //     ? [
//                   //   BoxShadow(
//                   //     color: Colors.grey.withOpacity(0.5),
//                   //     spreadRadius: 5,
//                   //     blurRadius: 7,
//                   //     offset: const Offset(0, 3),
//                   //   ),
//                   // ]
//                   //     : [],
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ElevatedButton(
//                       onPressed: navigateToLoginPage,
//                       style: ElevatedButton.styleFrom(
//                         foregroundColor: Colors.white, backgroundColor: Colors.blue,
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 50.0, vertical: 20.0),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30.0),
//                         ),
//                       ),
//                       child: const Text(
//                         'Login',
//                         style: TextStyle(
//                           fontSize: 20.0,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: 'Roboto',
//                         ),
//                       ),
//                       onHover: (value) {
//                         setState(() {
//                           isHovered = value;
//                         });
//                       },
//                     ),
//                     const SizedBox(height: 20.0),
//                     ElevatedButton(
//                       onPressed: navigateToLoginPage,
//                       style: ElevatedButton.styleFrom(
//                         foregroundColor: Colors.white, backgroundColor: Colors.green,
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 50.0, vertical: 20.0),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30.0),
//                         ),
//                       ),
//                       child: const Text(
//                         'Sign Up',
//                         style: TextStyle(
//                           fontSize: 20.0,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: 'Roboto',
//                         ),
//                       ),
//                       onHover: (value) {
//                         setState(() {
//                           isHovered = value;
//                         });
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//   void navigateToLoginPage() async {
//     final newTodo = await Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => LoginPage()),
//     );
//   }
// }
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             const Text('Welcome',
//             style: TextStyle(fontSize:24.0),
//               ),
//             // const SizedBox(height: 70.0),
//             Container(
//               constraints: const BoxConstraints.tightFor(width: 500.0),
//               height: 500.0,
//               alignment: Alignment.center,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {
//                       // handle first button press
//                     },
//                     child: const Text('                              Login                              ',
//                     style: TextStyle(
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                       fontFamily: 'Roboto',
//                     ),
//                     ),
//                   ),
//                   const SizedBox(width: 30.0, height: 20.0),
//                   ElevatedButton(
//                     onPressed: () {
//                       // handle second button press
//                     },
//                     child: const Text('                            Sign Up                            ',
//                       style: TextStyle(
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                       fontFamily: 'Roboto',
//                     ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


