import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:zemoga_mobile_test/domain/comment/comment.dart';
import 'package:zemoga_mobile_test/domain/post/i_post_repository.dart';
import 'package:zemoga_mobile_test/domain/post/post.dart';
import 'package:zemoga_mobile_test/domain/user/user.dart';

part 'post_bloc.freezed.dart';
part 'post_event.dart';
part 'post_state.dart';

@injectable
class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc(this._postRepository) : super(PostState.initial()) {
    on<GetPostData>(_getPostData);
  }
  final IPostRepository _postRepository;

  FutureOr<void> _getPostData(
    GetPostData event,
    Emitter<PostState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final failureOrUser = await _postRepository.getUser(event.post.userId);
    final failureOrComments =
        await _postRepository.getCommentsByPostId(event.post.id);

    final user = failureOrUser.fold((_) => null, (user) => user);

    final comments =
        failureOrComments.fold((_) => null, (comments) => comments);

    emit(
      state.copyWith(
        isLoading: false,
        post: event.post,
        user: user,
        comments: comments,
      ),
    );
  }
}
