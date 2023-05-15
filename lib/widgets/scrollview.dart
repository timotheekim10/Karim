import 'package:flutter/material.dart';

class Scrollview extends StatefulWidget {
  const Scrollview({Key? key}) : super(key: key);

  @override
  ScrollviewState createState() => ScrollviewState();
}

class ScrollviewState extends State<Scrollview> {
  String selectedButton = "Food"; // 선택된 버튼의 텍스트를 저장할 변수

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  selectedButton = "Food"; // Food 버튼이 선택됐을 때 변수 값 변경
                });
              },
              child: Text(
                "Food",
                style: TextStyle(
                  color: selectedButton == "Food"
                      ? Colors.black
                      : Colors.grey, // 선택 여부에 따라 색 변경
                ),
              ),
            ),
            const SizedBox(width: 10),
            TextButton(
              onPressed: () {
                setState(() {
                  selectedButton = "Trip"; // Trip 버튼이 선택됐을 때 변수 값 변경
                });
              },
              child: Text(
                "Trip",
                style: TextStyle(
                  color: selectedButton == "Trip"
                      ? Colors.black
                      : Colors.grey, // 선택 여부에 따라 색 변경
                ),
              ),
            ),
            const SizedBox(width: 10),
            TextButton(
              onPressed: () {
                setState(() {
                  selectedButton = "Shopping"; // Shopping 버튼이 선택됐을 때 변수 값 변경
                });
              },
              child: Text(
                "Shopping",
                style: TextStyle(
                  color: selectedButton == "Shopping"
                      ? Colors.black
                      : Colors.grey, // 선택 여부에 따라 색 변경
                ),
              ),
            ),
            const SizedBox(width: 10),
            TextButton(
              onPressed: () {
                setState(() {
                  selectedButton = "Financial"; // Financial 버튼이 선택됐을 때 변수 값 변경
                });
              },
              child: Text(
                "Financial",
                style: TextStyle(
                  color: selectedButton == "Financial"
                      ? Colors.black
                      : Colors.grey, // 선택 여부에 따라 색 변경
                ),
              ),
            ),
            const SizedBox(width: 10),
            TextButton(
              onPressed: () {
                setState(() {
                  selectedButton = "SNS"; // Financial 버튼이 선택됐을 때 변수 값 변경
                });
              },
              child: Text(
                "SNS",
                style: TextStyle(
                  color: selectedButton == "SNS"
                      ? Colors.black
                      : Colors.grey, // 선택 여부에 따라 색 변경
                ),
              ),
            ),
            const SizedBox(width: 10),
            TextButton(
              onPressed: () {
                setState(() {
                  selectedButton = "Game"; // Financial 버튼이 선택됐을 때 변수 값 변경
                });
              },
              child: Text(
                "Game",
                style: TextStyle(
                  color: selectedButton == "Game"
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
