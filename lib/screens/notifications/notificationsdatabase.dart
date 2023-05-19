import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Database {
  late FirebaseFirestore firestore;
  initiliase() {
    firestore = FirebaseFirestore.instance;
  }

  Future<void> create(String name, String code) async {
    try {
      await firestore.collection("Notifications").add({
        'Notification Heading': name,
        'Notification Description': code,
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
          await firestore.collection('Notifications').orderBy('timestamp').get();
      if (querySnapshot.docs.isNotEmpty) {
        for (var doc in querySnapshot.docs.toList()) {
          Map a = {
            "id": doc.id,
            "Notification Heading": doc['Notification Heading'],
            "Notification Description": doc["Notification Description"]
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
          .collection("Notifications")
          .doc(id)
          .update({'Notification Heading': name, 'Notification Description': code});
    } catch (e) {
      print(e);
    }
  }
}
