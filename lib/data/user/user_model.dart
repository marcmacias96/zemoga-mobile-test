import 'package:zemoga_mobile_test/domain/user/user.dart';

class UserModel extends User {
  UserModel({
    required int id,
    required String name,
    required String username,
    required String email,
    required String phone,
    required String website,
  }) : super(
          id: id,
          name: name,
          username: username,
          email: email,
          phone: phone,
          website: website,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'] as int,
        name: json['name'] as String,
        username: json['username'] as String,
        email: json['email'] as String,
        phone: json['phone'] as String,
        website: json['website'] as String,
      );
}
