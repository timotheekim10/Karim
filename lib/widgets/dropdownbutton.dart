import 'package:flutter/material.dart';
import '../screen/canadapage.dart';
import '../screen/francepage.dart';
import '../screen/germanypage.dart';
import '../screen/italypage.dart';
import '../screen/japanpage.dart';
import '../screen/koreapage.dart';
import '../screen/ukpage.dart';
import '../screen/usapage.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  DropdownState createState() => DropdownState();
}

class DropdownState extends State<Dropdown> {
  String? dropdownValue = 'KOREA';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      child: DropdownButton<String>(
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
          if (value == 'JAPAN') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const JapanPage()),
            );
          } else if (value == 'USA') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const USAPage()),
            );
          } else if (value == 'UK') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const UKPage()),
            );
          } else if (value == 'FRANCE') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FRANCEPage()),
            );
          } else if (value == 'GERMANY') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GERMANYPage()),
            );
          } else if (value == 'ITALY') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ITALYPage()),
            );
          } else if (value == 'CANADA') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CANADAPage()),
            );
          } else if (value == 'KOREA') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const KOREAPage()),
            );
          }
        },
        icon: const Padding(
          padding: EdgeInsets.only(right: 8),
          child: Icon(Icons.arrow_drop_down),
        ),
        iconSize: 24,
        isExpanded: true,
        underline: const SizedBox(),
      ),
    );
  }
}
