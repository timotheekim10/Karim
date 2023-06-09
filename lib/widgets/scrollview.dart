import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectedButtonProvider extends ChangeNotifier {
  String _selectedButton = "Food";

  String get selectedButton => _selectedButton;

  set selectedButton(String button) {
    _selectedButton = button;
    notifyListeners();
  }
}

class Scrollview extends StatefulWidget {
  final String? country;

  const Scrollview({
    Key? key,
    this.country,
  }) : super(key: key);

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

  List<String> carouselImages = [];
  List<String> carouselTitles = [];

  late PageController _pageController;
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
    _startTimer();

    // 데이터 가져오기
    _fetchCarouselData();
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
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInOut,
      );

      if (_currentPage == carouselImages.length - 1) {
        Future.delayed(const Duration(seconds: 4), () {
          _currentPage = 0;
          _pageController.jumpToPage(0);
        });
      }
    });
  }

  void _fetchCarouselData() async {
    try {
      final snapshot = await FirebaseFirestore.instance
          .collection('Info')
          .doc(widget.country)
          .get();
      final data = snapshot.data();

      final selectedButtonProvider = Provider.of<SelectedButtonProvider>(
          context,
          listen: false); // SelectedButtonProvider 가져오기
      final selectedButton = selectedButtonProvider.selectedButton;

      if (data != null && data.containsKey(selectedButton)) {
        final categoryData = data[selectedButton];
        if (categoryData is List && categoryData.isNotEmpty) {
          final String title1 = categoryData[0]['product_name'];
          final String title2 = categoryData[1]['product_name'];
          final String title3 = categoryData[2]['product_name'];
          final String title4 = categoryData[3]['product_name'];
          setState(() {
            carouselTitles = [title1, title2, title3, title4];
            carouselImages = [
              'assets/images/$title1.jpg',
              'assets/images/$title2.jpg',
              'assets/images/$title3.jpg',
              'assets/images/$title4.jpg',
            ];
          });
        }
      }
    } catch (e) {
      // Handle error
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final selectedButtonProvider = Provider.of<SelectedButtonProvider>(context);
    final selectedButton = selectedButtonProvider.selectedButton;

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
                        selectedButtonProvider.selectedButton = button;
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
                      bottom: 70,
                      left: 120,
                      child: Text(
                        carouselTitles[index],
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
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
