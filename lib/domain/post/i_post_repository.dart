import 'package:dartz/dartz.dart';
import 'package:zemoga_mobile_test/domain/comment/comment.dart';
import 'package:zemoga_mobile_test/domain/core/failure.dart';
import 'package:zemoga_mobile_test/domain/post/post.dart';
import 'package:zemoga_mobile_test/domain/user/user.dart';

// ignore: one_member_abstracts
abstract class IPostRepository {
  Future<Either<Failure, Post>> getPost(int id);
  Future<Either<Failure, List<Post>>> getPosts();
  Future<Either<Failure, List<Comment>>> getCommentsByPostId(int postId);
  Future<List<int>> getFavoritePosts();
  Future<Unit> addPostToFavorite(int postId);
  Future<Either<Failure, User>> getUser(int id);
}
