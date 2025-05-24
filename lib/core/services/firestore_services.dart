
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:s_rocks_music_homepage/data/models/service_model.dart';


class FirestoreService {
  final FirebaseFirestore _firestore;

  FirestoreService(this._firestore);

  Future<List<ServiceModel>> fetchServices() async {
    final snapshot = await _firestore.collection('services').get();
    return snapshot.docs
        .map((doc) => ServiceModel.fromJson(doc.data()))
        .toList();
  }
}