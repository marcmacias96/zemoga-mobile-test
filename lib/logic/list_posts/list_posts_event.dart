part of 'list_posts_bloc.dart';

@freezed
class ListPostsEvent with _$ListPostsEvent {
  const factory ListPostsEvent.getPosts() = GetPosts;
  const factory ListPostsEvent.getFavoritePosts() = GetFavoritePosts;
  const factory ListPostsEvent.removeAllFavorite() = RemoveAllFavorite;
}
