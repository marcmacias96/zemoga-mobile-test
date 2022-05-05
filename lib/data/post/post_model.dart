import 'package:zemoga_mobile_test/domain/post/post.dart';

class PostModel extends Post {
  PostModel({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) : super(
          userId: userId,
          id: id,
          title: title,
          body: body,
        );

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        userId: json['userId'] as int,
        id: json['id'] as int,
        title: json['title'] as String,
        body: json['body'] as String,
      );
}
