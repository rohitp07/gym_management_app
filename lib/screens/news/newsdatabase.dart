import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Database {
  late FirebaseFirestore firestore;
  initiliase() {
    firestore = FirebaseFirestore.instance;
  }

  Future<void> create(String name, String code) async {
    try {
      await firestore.collection("News").add({
        'News Heading': name,
        'News Description': code,
        'timestamp': FieldValue.serverTimestamp()
      });
    } catch (e) {
      print(e);
    }
  }

  Future<void> delete(String id) async {
    try {
      await firestore.collection("News").doc(id).delete();
    } catch (e) {
      print(e);
    }
  }

  Future<List?> read() async {
    QuerySnapshot querySnapshot;
    List docs = [];
    try {
      querySnapshot =
          await firestore.collection('News').orderBy('timestamp').get();
      if (querySnapshot.docs.isNotEmpty) {
        for (var doc in querySnapshot.docs.toList()) {
          Map a = {
            "id": doc.id,
            "News Heading": doc['News Heading'],
            "News Description": doc["News Description"]
          };
          docs.add(a);
        }
        return docs;
      }
    } catch (e) {
      print(e);
      ;
    }
  }

  Future<void> update(String id, String name, String code) async {
    try {
      await firestore
          .collection("News")
          .doc(id)
          .update({'News Heading': name, 'News Description': code});
    } catch (e) {
      print(e);
    }
  }
}
