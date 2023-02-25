import 'package:flutter/material.dart';

class FrontPage extends StatefulWidget{
  const FrontPage({Key? key}): super(key:key);
  @override
  State<FrontPage> createState() => FrontPageState();
}

class FrontPageState extends State<FrontPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Welcome',
            style: TextStyle(fontSize:24.0),
              ),
            // const SizedBox(height: 70.0),
            Container(
              constraints: const BoxConstraints.tightFor(width: 500.0),
              height: 500.0,
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                },
                child: const Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


