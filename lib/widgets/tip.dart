import 'package:flutter/material.dart';

import '../screens/tipscreen.dart';

class Tip extends StatelessWidget {
  const Tip({Key? key, required this.country, required this.category})
      : super(key: key);

  final String? country;
  final String? category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    TipScreen(country: country, category: category)));
      },
      child: Container(
        width: 320,
        height: 80,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Colors.black54,
              blurRadius: 20.0,
              spreadRadius: -20.0,
              offset: Offset(0.0, 25.0),
            ),
          ],
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Tip!',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                '$category',
                style: TextStyle(fontSize: 10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
