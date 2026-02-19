import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../services/auth_service.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthService _service = AuthService();

  bool loading = false;

  Future<UserModel?> login(String email, String pass) async {
    loading = true;
    notifyListeners();

    try {
      final user = await _service.login(email, pass);
      return user;
    } catch (e) {
      return null;
    } finally {
      loading = false;
      notifyListeners();
    }
  }

  Future<void> logout() async {
    await _service.logout();
  }
}
