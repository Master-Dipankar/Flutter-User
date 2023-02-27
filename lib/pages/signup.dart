import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // late String _name;
  // late String _email;
  // late String _password;

  // final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: null,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlueAccent, Colors.lightGreenAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.name,
              onChanged: (value) {
                setState(() {
                  // _email = value;
                });
              },
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                setState(() {
                  // _email = value;
                });
              },
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
              onChanged: (value) {
                setState(() {
                  // _password = value;
                });
              },
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
              onChanged: (value) {
                setState(() {
                  // _password = value;
                });
              },
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // TODO
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  horizontal: 50.0,
                  vertical: 20.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: null,
//         elevation: 0,
//         title: const Text('Sign Up',
//             textAlign: TextAlign.center),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Container(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0),
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Colors.lightBlueAccent, Colors.lightGreenAccent],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//             ),
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: <Widget>[
//                   const Text(
//                     'Sign Up',
//                     style: TextStyle(
//                       fontSize: 32.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                   const SizedBox(height: 20.0),
//                   TextFormField(
//                     decoration: const InputDecoration(
//                       labelText: 'Name',
//                       border: OutlineInputBorder(),
//                     ),
//                     keyboardType: TextInputType.name,
//                     onChanged: (value) {
//                       setState(() {
//                         _name = value;
//                       });
//                     },
//                   ),
//                   const SizedBox(height: 10.0),
//                   TextFormField(
//                     decoration: const InputDecoration(
//                       labelText: 'Email',
//                       border: OutlineInputBorder(),
//                     ),
//                     keyboardType: TextInputType.emailAddress,
//                     onChanged: (value) {
//                       setState(() {
//                         _email = value;
//                       });
//                     },
//                   ),
//                   const SizedBox(height: 10.0),
//                   TextFormField(
//                     decoration: const InputDecoration(
//                       labelText: 'Password',
//                       border: OutlineInputBorder(),
//                     ),
//                     obscureText: true,
//                     onChanged: (value) {
//                       setState(() {
//                         _password = value;
//                       });
//                     },
//                   ),
//                   const SizedBox(height: 20.0),
//                   ElevatedButton(
//                     onPressed: () {
//                       // TODO
//                     },
//                     child: const Text('Sign Up'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
//
//
// class SignupPage extends StatefulWidget {
//   @override
//   _SignupPageState createState() => _SignupPageState();
// }
//
// class _SignupPageState extends State<SignupPage> {
//   late String _name;
//   late String _email;
//   late String _password;
//
//   final _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: null,
//         elevation: 0,
//         title: const Text('Sign Up',
//           textAlign: TextAlign.center),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//       ),
//       body: SafeArea(
//           child: SingleChildScrollView(
//             child: Container(
//               padding: const EdgeInsets.symmetric(horizontal: 20.0),
//               decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Colors.lightBlueAccent, Colors.lightGreenAccent],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//               ),
//               child: Form(
//                 key: _formKey,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: <Widget>[
//                     const Text(
//                       'Sign Up',
//                       style: TextStyle(
//                         fontSize: 32.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(height: 20.0),
//                     TextFormField(
//                       decoration: const InputDecoration(
//                         labelText: 'Name',
//                         border: OutlineInputBorder(),
//                       ),
//                       keyboardType: TextInputType.name,
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'Please enter your name';
//                         }
//                         return null;
//                       },
//                       onChanged: (value) {
//                         setState(() {
//                           _name = value;
//                         });
//                       },
//                     ),
//                     const SizedBox(height: 10.0),
//                     TextFormField(
//                       decoration: const InputDecoration(
//                         labelText: 'Email',
//                         border: OutlineInputBorder(),
//                       ),
//                       keyboardType: TextInputType.emailAddress,
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'Please enter your email';
//                         } else if (!value.contains('@')) {
//                           return 'Please enter a valid email';
//                         }
//                         return null;
//                       },
//                       onChanged: (value) {
//                         setState(() {
//                           _email = value;
//                         });
//                       },
//                     ),
//                     const SizedBox(height: 10.0),
//                     TextFormField(
//                       decoration: const InputDecoration(
//                         labelText: 'Password',
//                         border: OutlineInputBorder(),
//                       ),
//                       obscureText: true,
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'Please enter your password';
//                         } else if (value.length < 6) {
//                           return 'Password must be at least 6 characters';
//                         }
//                         return null;
//                       },
//                       onChanged: (value) {
//                         setState(() {
//                           _password = value;
//                         });
//                       },
//                     ),
//                     const SizedBox(height: 20.0),
//                     ElevatedButton(
//                       onPressed: () {
//                         if (_formKey.currentState!.validate()) {
//                           // TODO
//                         }
//                       },
//                       child: const Text('Sign Up'),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       );
//   }
//
// }
