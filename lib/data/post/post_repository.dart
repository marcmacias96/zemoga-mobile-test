// ignore_for_file: cascade_invocations

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zemoga_mobile_test/data/comment/comment_model.dart';
import 'package:zemoga_mobile_test/data/post/post_model.dart';
import 'package:zemoga_mobile_test/data/user/user_model.dart';
import 'package:zemoga_mobile_test/domain/comment/comment.dart';
import 'package:zemoga_mobile_test/domain/core/failure.dart';
import 'package:zemoga_mobile_test/domain/post/i_post_repository.dart';
import 'package:zemoga_mobile_test/domain/post/post.dart';
import 'package:zemoga_mobile_test/domain/user/user.dart';

@LazySingleton(as: IPostRepository)
class PostRepository implements IPostRepository {
  PostRepository(this._dio, this._logger);

  final Dio _dio;
  final Logger _logger;

  @override
  Future<Either<Failure, List<Comment>>> getCommentsByPostId(int postId) async {
    try {
      final response = await _dio.get('/posts/$postId/comments');
      return right(
        List.from(
          (response.data as List).map(
            (e) => CommentModel.fromJson(e as Map<String, dynamic>),
          ),
        ),
      );
    } catch (e) {
      _logger.e(e);
      return left(const Failure.serverError());
    }
  }

  @override
  Future<List<int>> getFavoritePosts() async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = prefs.getStringList(localKey) ?? [];
    return favorites.map(int.parse).toList();
  }

  @override
  Future<Either<Failure, Post>> getPost(int id) async {
    try {
      final response = await _dio.get('/posts/$id');
      return right(PostModel.fromJson(response.data as Map<String, dynamic>));
    } catch (e) {
      _logger.e(e);
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, List<Post>>> getPosts() async {
    try {
      final response = await _dio.get('/posts');
      return right(
        List.from(
          (response.data as List)
              .map((e) => PostModel.fromJson(e as Map<String, dynamic>)),
        ),
      );
    } catch (e) {
      _logger.e(e);
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Unit> addPostToFavorite(int postId) async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = prefs.getStringList(localKey) ?? [];
    favorites.add(postId.toString());
    await prefs.setStringList(localKey, favorites);
    return unit;
  }

  @override
  Future<Either<Failure, User>> getUser(int id) async {
    try {
      final response = await _dio.get('/users/$id');
      return right(UserModel.fromJson(response.data as Map<String, dynamic>));
    } catch (e) {
      _logger.e(e);
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Unit> removePostToFavorite(int postId) async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = prefs.getStringList(localKey) ?? [];
    favorites.remove(postId.toString());
    await prefs.setStringList(localKey, favorites);
    return unit;
  }

  @override
  Future<Unit> deleteAllFavoritePosts() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(localKey, []);
    return unit;
  }
}

const localKey = 'favorite_posts';
