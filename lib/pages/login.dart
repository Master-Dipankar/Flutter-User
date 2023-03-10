import 'package:flutter/material.dart';
import 'package:user/pages/transaction2.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
  // void navigateToTransaction(BuildContext context) async {
  //   // final result = await Navigator.push(
  //   //   context,
  //   //   MaterialPageRoute(builder: (context) => const Transaction2()),
  //   // );
  //   // handle the result here
  // }
}

class _LoginPageState extends State<LoginPage> {
  // late String _email;
  // late String _password;

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
              'Login',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
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
            const SizedBox(height: 20.0),
            ElevatedButton(
              // onPressed: navigateToTransaction2,
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context)=> const Transaction2()),
                );
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
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  // void navigateToTransaction2() async {
  //   final login = await Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => const Transaction2()),
  //   );
  // }
}
