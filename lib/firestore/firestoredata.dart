import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
FirebaseFirestore firestore = FirebaseFirestore.instance;

class GetNation extends StatelessWidget {
  final String documentId; 

  const GetNation({Key? key, this.Nation, this.TipData}) : super(key: key);

  GetNation GetNation({
  Key? key,
  dynamic Nation,
  dynamic TipData,
})

  GetNation(this.documentId);

  @override
  Widget build(BuildContext context) {
    CollectionReference category = FirebaseFirestore.instance.collection('category');

    return FutureBuilder<DocumentSnapshot>(
      future: category.doc(documentId).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {

        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
          return Text("Full Name: ${data['full_name']} ${data['last_name']}");
        }

        return Text("loading");
      },
    );
  }
}