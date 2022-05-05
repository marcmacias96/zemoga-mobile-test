import 'package:zemoga_mobile_test/domain/comment/comment.dart';

class CommentModel extends Comment {
  CommentModel({
    required int postId,
    required int id,
    required String name,
    required String email,
    required String body,
  }) : super(
          postId: postId,
          id: id,
          name: name,
          email: email,
          body: body,
        );

  factory CommentModel.fromJson(Map<String, dynamic> json) => CommentModel(
        postId: json['postId'] as int,
        id: json['id'] as int,
        name: json['name'] as String,
        email: json['email'] as String,
        body: json['body'] as String,
      );
}
