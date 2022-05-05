part of 'list_posts_bloc.dart';

@freezed
class ListPostsState with _$ListPostsState {
  const factory ListPostsState.initial() = _Initial;
  const factory ListPostsState.loadInProgress() = _LoadInProgress;
  const factory ListPostsState.loaded(List<Post> posts) = _Loaded;
  const factory ListPostsState.loadError() = _LoadError;
}
