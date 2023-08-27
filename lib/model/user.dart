class User {
  int? id;
  String name, email, phone, website;

  User(
      {this.id,
      required this.name,
      required this.email,
      required this.phone,
      required this.website,});

  factory User.fromJSON(Map<String, dynamic> parsedJson) {
    return User(
      id: parsedJson['id'],
      name: parsedJson['name'],
      email: parsedJson['email'],
      phone: parsedJson['phone'],
      website: parsedJson['website'],
    );
  }
}
