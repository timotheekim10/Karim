import 'package:flutter/material.dart';
import 'package:karim/screen/tipscreen.dart';

import '../widgets/scrollview.dart';

class KOREAPage extends StatelessWidget {
  const KOREAPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Korea'),
        backgroundColor: const Color(0xff5E8ACF),
        leading: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: const Scrollview(),
          ),
          const SizedBox(height: 5),
          Container(
            margin: const EdgeInsets.only(left: 25),
            width: 350,
            height: 350,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/food.png'),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 20,
                  left: 25,
                  child: Container(
                    width: 300,
                    height: 70,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 55,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/baemin.png'),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 55,
                  left: 120,
                  child: Text(
                    "BAEMIN",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                const Positioned(
                  bottom: 35,
                  left: 120,
                  child: Text(
                    "Korea's No. 1 delivery app!",
                    style: TextStyle(
                      color: Color(0xffA8A6A6),
                      fontSize: 14,
                      letterSpacing: 0,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 70,
                  right: 55,
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0xffF5F5F5)),
                  ),
                ),
                Positioned(
                  bottom: 82,
                  right: 78,
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[700],
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "4.8",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TipScreen()));
            },
            child: Container(
              width: 300,
              height: 50,
              padding: EdgeInsets.all(5),
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
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Tip!',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    'sdadsdads',
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
