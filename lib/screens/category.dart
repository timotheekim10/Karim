import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/color_list.dart';
import '../widgets/recommended_apps.dart';
import '../widgets/scrollview.dart';
import '../widgets/tip.dart';

class CountryPage extends StatefulWidget {
  final String? country;

  const CountryPage({Key? key, this.country}) : super(key: key);

  @override
  State<CountryPage> createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  @override
  Widget build(BuildContext context) {
    final selectedButtonProvider = Provider.of<SelectedButtonProvider>(context);
    final selectedButton = selectedButtonProvider.selectedButton;

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
          const Scrollview(
            productName: '',
          ),
          Tip(
            country: widget.country,
            category: selectedButton,
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
                  ' in $selectedButton',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: color_list[widget.country],
                  ),
                ),
              ],
            ),
          ), //api
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RecommendedApps(
                country: widget.country,
                category: selectedButton,
                ranking: 0,
              ),
              const SizedBox(width: 25),
              RecommendedApps(
                  country: widget.country,
                  category: selectedButton,
                  ranking: 1),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RecommendedApps(
                  country: widget.country,
                  category: selectedButton,
                  ranking: 2),
              const SizedBox(width: 25),
              RecommendedApps(
                  country: widget.country,
                  category: selectedButton,
                  ranking: 3),
            ],
          ),
        ],
      ),
    );
  }
}
