import 'package:flutter/material.dart';
import 'package:karim/widgets/recommended_details.dart';

class RecommendedApps extends StatelessWidget {
  const RecommendedApps({
    Key? key,
    required this.country,
    required this.category,
    required this.ranking,
  }) : super(key: key);

  final int ranking;
  final String? country;
  final String? category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecommendedAppDetails(
              country: country,
              category: category,
              ranking: ranking,
            ),
          ),
        );
      },
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
