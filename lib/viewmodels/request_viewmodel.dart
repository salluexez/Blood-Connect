import 'package:flutter/material.dart';
import '../models/request_model.dart';
import '../services/request_service.dart';

class RequestViewModel extends ChangeNotifier {
  final RequestService _service = RequestService();

  bool loading = false;

  Stream<List<RequestModel>> get requestsStream => _service.getRequests();

  Future<void> addRequest(RequestModel request) async {
    loading = true;
    notifyListeners();

    await _service.addRequest(request);

    loading = false;
    notifyListeners();
  }
}
