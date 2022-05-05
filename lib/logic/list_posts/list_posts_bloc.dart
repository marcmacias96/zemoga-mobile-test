import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:zemoga_mobile_test/domain/post/i_post_repository.dart';

import 'package:zemoga_mobile_test/domain/post/post.dart';

part 'list_posts_state.dart';
part 'list_posts_event.dart';
part 'list_posts_bloc.freezed.dart';

@injectable
class ListPostsBloc extends Bloc<ListPostsEvent, ListPostsState> {
  ListPostsBloc(this._postRepository) : super(const ListPostsState.initial()) {
    on<GetPosts>(_getPosts);
    on<RemoveAllFavorite>(_removeAllFavorite);
  }

  final IPostRepository _postRepository;

  FutureOr<void> _getPosts(
    GetPosts event,
    Emitter<ListPostsState> emit,
  ) async {
    emit(const ListPostsState.loadInProgress());
    final failureOrPosts = await _postRepository.getPosts();
    final favorites = await _postRepository.getFavoritePosts();

    emit(
      failureOrPosts.fold(
        (failure) => const ListPostsState.loadError(),
        (posts) => ListPostsState.loaded(
          posts,
          posts.where((post) => favorites.contains(post.id)).toList(),
        ),
      ),
    );
  }

  FutureOr<void> _removeAllFavorite(
    RemoveAllFavorite event,
    Emitter<ListPostsState> emit,
  ) async {
    await _postRepository.deleteAllFavoritePosts();
    add(const GetPosts());
  }
}
