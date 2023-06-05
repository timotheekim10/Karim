import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Container(
            color: Colors.white.withOpacity(0.1),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Column(
                children: const [
                  Text(
                    'a guide for using KARIM',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Hello, traveler!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Let\'s check and use the representative application of the country you want with Karim by traveling together!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 200,
            right: 50,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey.withOpacity(0.3),
                    blurRadius: 20,
                    offset: const Offset(1, 4),
                  ),
                ],
              ),
              child: Image.asset(
                'assets/images/manual.png',
                width: 315.05,
                height: 405,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            right: 180,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/second');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: const Text(
                'Close',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
