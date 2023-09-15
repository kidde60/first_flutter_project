import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());

class User {
  String firstName;
  String lastName;
  String? otherName;
  String? password;
  String? email;
  int? height;
  DateTime? dateOfBirth;
  bool? isAdmin;

  User({
    required this.firstName,
    required this.lastName,
    this.otherName,
    this.password,
    this.email,
    this.height,
    this.dateOfBirth,
    this.isAdmin,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        firstName: json['firstName'],
        lastName: json['lastName'],
        otherName: json['otherName'],
        password: json['password'],
        email: json['email'],
        height: int.parse(json['height']),
        dateOfBirth: json['dateOfBirth'],
        isAdmin: json['isAdmin'],
      );

  Map<String, dynamic> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
        'otherName': otherName,
        'password': password,
        'email': email,
        'height': height,
        'dateOfBirth': dateOfBirth,
        'isAdmin': isAdmin,
      };
}

// Map json = {
//   "name": "Enoch",
//   "age": 32,
//   "isTall": false,
// };

// String myName = json['name'];
// String myAge = json['age'];
// String isHeTall = json['isTall'];
