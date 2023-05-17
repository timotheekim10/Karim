import 'package:flutter/material.dart';

class Scrollview extends StatefulWidget {
  const Scrollview({Key? key}) : super(key: key);

  @override
  ScrollviewState createState() => ScrollviewState();
}

class ScrollviewState extends State<Scrollview> {
  List<String> buttons = [
    "Food",
    "Trip",
    "Shopping",
    "Financial",
    "SNS",
    "Game",
  ];

  String selectedButton = "Food";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (String button in buttons)
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          selectedButton = button;
                        });
                      },
                      child: Text(
                        button,
                        style: TextStyle(
                          color: selectedButton == button
                              ? Colors.black
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
        Container(
          width: 350,
          height: 350,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                selectedButton == "Food"
                    ? 'assets/images/food.png'
                    : selectedButton == "Trip"
                        ? 'assets/images/trip.png'
                        : selectedButton == "Shopping"
                            ? 'assets/images/shopping.png'
                            : selectedButton == "Financial"
                                ? 'assets/images/financial.png'
                                : selectedButton == "SNS"
                                    ? 'assets/images/sns.png'
                                    : 'assets/images/game.png',
              ),
              fit: BoxFit.cover,
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
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
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
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
