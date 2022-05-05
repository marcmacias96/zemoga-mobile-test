import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zemoga_mobile_test/domain/post/i_post_repository.dart';

import '../../domain/comment/comment.dart';
import '../../domain/post/post.dart';
import '../../domain/user/user.dart';

part 'list_posts_state.dart';
part 'list_posts_event.dart';
part 'list_posts_bloc.freezed.dart';

class ListPostsBloc extends Bloc<ListPostsEvent, ListPostsState> {
  ListPostsBloc(this._postRepository) : super(const ListPostsState.initial()) {
    on<GetPosts>(_getPostData);
  }

  final IPostRepository _postRepository;

  FutureOr<void> _getPostData(
      GetPosts event, Emitter<ListPostsState> emit) async {
    emit(const ListPostsState.loadInProgress());
    final failureOrPosts = await _postRepository.getPosts();
    emit(
      failureOrPosts.fold(
        (failure) => const ListPostsState.loadError(),
        ListPostsState.loaded,
      ),
    );
  }
}
