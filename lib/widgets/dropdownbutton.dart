import 'package:flutter/material.dart';
import 'package:karim/screens/category.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  DropdownState createState() => DropdownState();
}

class DropdownState extends State<Dropdown> {
  String? dropdownValue = 'KOREA';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      width: 350,
      child: DropdownButton<String>(
        dropdownColor: Colors.white,
        value: dropdownValue,
        items: [
          DropdownMenuItem(
            value: 'JAPAN',
            child: Text(
              'JAPAN',
              style: TextStyle(
                color: dropdownValue == 'JAPAN' ? Colors.grey : Colors.black,
              ),
            ),
          ),
          DropdownMenuItem(
            value: 'USA',
            child: Text(
              'USA',
              style: TextStyle(
                color: dropdownValue == 'USA' ? Colors.grey : Colors.black,
              ),
            ),
          ),
          DropdownMenuItem(
            value: 'UK',
            child: Text(
              'UK',
              style: TextStyle(
                color: dropdownValue == 'UK' ? Colors.grey : Colors.black,
              ),
            ),
          ),
          DropdownMenuItem(
            value: 'FRANCE',
            child: Text(
              'FRANCE',
              style: TextStyle(
                color: dropdownValue == 'FRANCE' ? Colors.grey : Colors.black,
              ),
            ),
          ),
          DropdownMenuItem(
            value: 'GERMANY',
            child: Text(
              'GERMANY',
              style: TextStyle(
                color: dropdownValue == 'GERMANY' ? Colors.grey : Colors.black,
              ),
            ),
          ),
          DropdownMenuItem(
            value: 'ITALY',
            child: Text(
              'ITALY',
              style: TextStyle(
                color: dropdownValue == 'ITALY' ? Colors.grey : Colors.black,
              ),
            ),
          ),
          DropdownMenuItem(
            value: 'CANADA',
            child: Text(
              'CANADA',
              style: TextStyle(
                color: dropdownValue == 'CANADA' ? Colors.grey : Colors.black,
              ),
            ),
          ),
          DropdownMenuItem(
            value: 'KOREA',
            child: Text(
              'KOREA',
              style: TextStyle(
                color: dropdownValue == 'KOREA' ? Colors.grey : Colors.black,
              ),
            ),
          ),
        ],
        onChanged: (String? value) {
          setState(() {
            dropdownValue = value;
          });
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CountryPage(country: value)),
          );
        },
        icon: const Padding(
          padding: EdgeInsets.only(left: 1, right: 1),
          child: Icon(Icons.arrow_drop_down),
        ),
        iconSize: 24,
        isExpanded: true,
        underline: const SizedBox(),
      ),
    );
  }
}
