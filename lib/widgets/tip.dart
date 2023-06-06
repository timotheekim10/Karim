import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../screens/tipscreen.dart';

class Tip extends StatelessWidget {
  const Tip({Key? key, required this.country, required this.category})
      : super(key: key);

  final String? country;
  final String? category;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot>(
      future: FirebaseFirestore.instance.collection('Tip').doc(country).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasData) {
          final List<dynamic> tipList =
              snapshot.data!.get(category as Object) as List<dynamic>;
          final random = Random();
          final randomIndex = random.nextInt(tipList.length);
          final randomTipText = tipList[randomIndex];
          final SummaryTipText = randomTipText.substring(0, 30);

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TipScreen(randomTipText: randomTipText),
                ),
              );
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
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      '$SummaryTipText',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return Text("Error: ${snapshot.error}");
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
