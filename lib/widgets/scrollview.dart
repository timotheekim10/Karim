import 'dart:async';

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
  List<String> carouselImages = [
    'assets/images/baemin.png',
  ];
  List<String> carouselTitles = [
    "BAEMIN",
    "Title 3",
    "Title 4",
    "Title 5",
    "Title 6",
  ];
  List<String> carousesublTitles = [
    "Korea's No. 1 delivery app!",
    "Title 3",
    "Title 4",
    "Title 5",
    "Title 6",
  ];

  late PageController _pageController;
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
    _startTimer();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 4), (_) {
      if (_currentPage < carouselImages.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

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
          child: SizedBox(
            width: 350,
            height: 350,
            child: PageView.builder(
              controller: _pageController,
              itemCount: carouselImages.length,
              itemBuilder: (context, index) {
                return Stack(
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
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(carouselImages[index]),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 85,
                      left: 120,
                      child: Text(
                        carouselTitles[index],
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 65,
                      left: 120,
                      child: Text(
                        carousesublTitles[index],
                        style: const TextStyle(
                          color: Color(0xffA8A6A6),
                          fontSize: 14,
                          letterSpacing: 0,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
