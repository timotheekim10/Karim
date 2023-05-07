import 'package:flutter/material.dart';

class Scrollview extends StatefulWidget {
  const Scrollview({Key? key}) : super(key: key);

  @override
  _ScrollviewState createState() => _ScrollviewState();
}

class _ScrollviewState extends State<Scrollview> {
  String _selectedButton = "Food"; // 선택된 버튼의 텍스트를 저장할 변수

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  _selectedButton = "Food"; // Food 버튼이 선택됐을 때 변수 값 변경
                });
              },
              child: Text(
                "Food",
                style: TextStyle(
                  color: _selectedButton == "Food"
                      ? Colors.black
                      : Colors.grey, // 선택 여부에 따라 색 변경
                ),
              ),
            ),
            const SizedBox(width: 10),
            TextButton(
              onPressed: () {
                setState(() {
                  _selectedButton = "Trip"; // Trip 버튼이 선택됐을 때 변수 값 변경
                });
              },
              child: Text(
                "Trip",
                style: TextStyle(
                  color: _selectedButton == "Trip"
                      ? Colors.black
                      : Colors.grey, // 선택 여부에 따라 색 변경
                ),
              ),
            ),
            const SizedBox(width: 10),
            TextButton(
              onPressed: () {
                setState(() {
                  _selectedButton = "Shopping"; // Shopping 버튼이 선택됐을 때 변수 값 변경
                });
              },
              child: Text(
                "Shopping",
                style: TextStyle(
                  color: _selectedButton == "Shopping"
                      ? Colors.black
                      : Colors.grey, // 선택 여부에 따라 색 변경
                ),
              ),
            ),
            const SizedBox(width: 10),
            TextButton(
              onPressed: () {
                setState(() {
                  _selectedButton =
                      "Navigation"; // Navigation 버튼이 선택됐을 때 변수 값 변경
                });
              },
              child: Text(
                "Navigation",
                style: TextStyle(
                  color: _selectedButton == "Navigation"
                      ? Colors.black
                      : Colors.grey, // 선택 여부에 따라 색 변경
                ),
              ),
            ),
            const SizedBox(width: 10),
            TextButton(
              onPressed: () {
                setState(() {
                  _selectedButton = "Financial"; // Financial 버튼이 선택됐을 때 변수 값 변경
                });
              },
              child: Text(
                "Financial",
                style: TextStyle(
                  color: _selectedButton == "Financial"
                      ? Colors.black
                      : Colors.grey, // 선택 여부에 따라 색 변경
                ),
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
