import 'package:flutter/material.dart';

class TipScreen extends StatelessWidget {
  const TipScreen({Key? key, required this.randomTipText}) : super(key: key);

  final String? randomTipText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5E8ACF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Tip',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Text(
              '$randomTipText',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
