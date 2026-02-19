class RequestModel {
  final String id;
  final String name;
  final String city;
  final String blood;
  final String phone;

  RequestModel({
    required this.id,
    required this.name,
    required this.city,
    required this.blood,
    required this.phone,
  });

  factory RequestModel.fromMap(Map<String, dynamic> data, String id) {
    return RequestModel(
      id: id,
      name: data["name"],
      city: data["city"],
      blood: data["blood"],
      phone: data["phone"],
    );
  }

  Map<String, dynamic> toMap() {
    return {"name": name, "city": city, "blood": blood, "phone": phone};
  }
}
