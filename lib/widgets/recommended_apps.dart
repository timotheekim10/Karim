import 'package:cloud_firestore/cloud_firestore.dart';
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
      onTap: () async {
        final snapshot = await FirebaseFirestore.instance
            .collection('Info')
            .doc(country)
            .get();
        final data = snapshot.data() as Map<String, dynamic>;
        final productName = data[category][ranking]['product_name'];
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecommendedAppDetails(
              productName: productName,
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
        child: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
          future:
              FirebaseFirestore.instance.collection('Info').doc(country).get(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final data = snapshot.data!.data()!;
              final productName = data[category][ranking]['product_name'];
              final ratings = data[category][ranking]['ratings'];
              return Column(
                children: [
                  Flexible(
                    flex: 2,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 4,
                          child: Container(
                            child:
                                Image.asset('assets/images/${productName}.jpg'),
                            width: 60,
                            height: 60,
                          ),
                        ),
                        Flexible(
                          flex: 5,
                          child: Container(
                            color: Colors.transparent,
                            alignment: Alignment.center,
                            child: Text('$productName'),
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
                      child: Text('$ratings/5'),
                    ),
                  ),
                ],
              );
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
