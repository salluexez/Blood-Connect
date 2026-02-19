import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/request_model.dart';

class RequestService {
  final _db = FirebaseFirestore.instance;

  Future<void> addRequest(RequestModel request) async {
    await _db.collection("requests").add(request.toMap());
  }

  Stream<List<RequestModel>> getRequests() {
    return _db
        .collection("requests")
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => RequestModel.fromMap(doc.data(), doc.id))
              .toList(),
        );
  }
}
