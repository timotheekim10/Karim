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
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
