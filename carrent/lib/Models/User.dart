import '../Shared/AppReposetory.dart';

class User {
  String id = "";
  String firstName = "";
  String lastName = "";
  String email = "";
  String password = "";
  String phone = "";
  bool verifiedEmail = false;
  bool gender = true;
  DateTime birthdate = DateTime.now();

  String profilePic = "";

  User();
  User copy() {
    User user = User();
    user.firstName = firstName;
    user.lastName = lastName;
    user.email = email;
    user.password = password;
    user.verifiedEmail = verifiedEmail;
    user.gender = gender;
    user.birthdate = birthdate;

    user.profilePic = profilePic;
    user.id = id;
    user.phone = phone;
    return user;
  }

  User.fromJsonSearch(Map<String, dynamic> json) {
    id = json['_id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    profilePic = json['profilePic'] ?? "";
  }

  String get getQrCode => 'user $id';
  void getCountry(String country) async {}
  User.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    firstName = json['firstName'];
    phone = json['phone'] ?? "";
    lastName = json['lastName'];
    email = json['email'];
    password = json['password'] ?? "";
    verifiedEmail = json['verifiedEmail'];
    gender = json['gender'];
    profilePic = json['profilePic'] ?? "";
    birthdate = DateTime.parse(json['birthdate'].toString());
  }
  Map<String, dynamic> toJsonSignup() => {
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "password": password,
        "gender": gender,
        "phone": phone,
        "birthdate": birthdate.toString(),
      };
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['email'] = email;
    data['password'] = password;
    data['phone'] = phone;
    data['verifiedEmail'] = verifiedEmail;
    data['gender'] = gender;
    data['birthdate'] = birthdate;

    data['profilePic'] = profilePic;
    return data;
  }
}
