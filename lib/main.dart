import 'package:flutter/material.dart';
import 'package:karim/widgets/dropdownbutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/karim.png'),
                ),
              ),
            ),
            const Positioned(
              top: 70,
              left: 33,
              right: 0,
              child: Text(
                'Where are you Traveling?',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const Positioned(
              top: 170,
              right: 50,
              child: Dropdown(),
            ),
          ],
        ),
      ),
    );
  }
}
