import 'package:flutter/material.dart';
import 'package:karim/screens/tipscreen.dart';
import '../data/color_list.dart';
import 'package:karim/widgets/recommended_apps.dart';
import '../widgets/scrollview.dart';

class CountryPage extends StatefulWidget {
  final String? country;

  const CountryPage({Key? key, this.country}) : super(key: key);

  @override
  State<CountryPage> createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.country ?? ''),
        backgroundColor: color_list[widget.country],
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
        children: [
          const Scrollview(),
          const SizedBox(height: 5),
          Container(
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
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TipScreen()));
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
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Tip!',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'sdadsdads',
                      style: TextStyle(fontSize: 10),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Top 4',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: color_list[widget.country],
                    ),
                  ),
                  Text(
                    ' in',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: color_list[widget.country],
                    ),
                  ),
                ],
              )), //api
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              RecommendedApps(ranking: 1),
              SizedBox(width: 25),
              RecommendedApps(ranking: 2),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              RecommendedApps(ranking: 3),
              SizedBox(width: 25),
              RecommendedApps(ranking: 4),
            ],
          ),
        ],
      ),
    );
  }
}
