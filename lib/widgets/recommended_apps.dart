import 'package:flutter/material.dart';

class RecommendedApps extends StatelessWidget {
  const RecommendedApps({Key? key, required this.ranking}) : super(key: key);
  final int ranking;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Colors.black54,
              blurRadius: 20.0,
              spreadRadius: -20.0,
              offset: Offset(0.0, 25.0),
            ),
          ],
        ),
        width: 140,
        height: 90,
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Row(
                children: [
                  Flexible(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: 80,
                      height: 80,
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: Container(
                      color: Colors.transparent,
                      alignment: Alignment.center,
                      child: Text('$ranking위 이름'),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.transparent,
                alignment: Alignment.center,
                child: Text('$ranking위 설명'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
