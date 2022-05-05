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
    on<GetPosts>(_getPostData);
    on<GetFavoritePosts>(_getFavoritePosts);
    on<RemoveAllFavorite>(_removeAllFavorite);
  }

  final IPostRepository _postRepository;

  FutureOr<void> _getPostData(
    GetPosts event,
    Emitter<ListPostsState> emit,
  ) async {
    emit(const ListPostsState.loadInProgress());
    final failureOrPosts = await _postRepository.getPosts();
    emit(
      failureOrPosts.fold(
        (failure) => const ListPostsState.loadError(),
        ListPostsState.loaded,
      ),
    );
  }

  FutureOr<void> _getFavoritePosts(
    GetFavoritePosts event,
    Emitter<ListPostsState> emit,
  ) async {
    emit(const ListPostsState.loadInProgress());
    final favorites = await _postRepository.getFavoritePosts();
    final failureOrPosts = await _postRepository.getPosts();
    emit(
      failureOrPosts.fold(
        (failure) => const ListPostsState.loadError(),
        (posts) => ListPostsState.loaded(
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
    add(const GetFavoritePosts());
  }
}
