class UserModel {
  final String uid;
  final String role;

  UserModel({required this.uid, required this.role});

  factory UserModel.fromMap(Map<String, dynamic> data, String uid) {
    return UserModel(uid: uid, role: data["role"]);
  }
}
