import 'package:flutter/material.dart';

class RandomApps extends StatefulWidget {
  const RandomApps({super.key});

  @override
  State<RandomApps> createState() => _RandomAppsState();
}

class _RandomAppsState extends State<RandomApps> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            bottom: 30,
            left: 25,
            child: Container(
              width: 300,
              height: 100,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 55,
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
            bottom: 85,
            left: 120,
            child: Text(
              "BAEMIN",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            bottom: 65,
            left: 120,
            child: Text(
              "Korea's No. 1 delivery app!", //api
              style: TextStyle(
                color: Color(0xffA8A6A6),
                fontSize: 14,
                letterSpacing: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
