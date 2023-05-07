import 'package:flutter/material.dart';

class USAPage extends StatelessWidget {
  const USAPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 140,
        height: 35,
        margin: const EdgeInsets.only(top: 60, left: 50),
        decoration: BoxDecoration(
          color: const Color(0xff5E8ACF),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Center(
          child: Text(
            'USA',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
