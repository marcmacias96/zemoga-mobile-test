part of 'list_posts_bloc.dart';

@freezed
class ListPostsEvent with _$ListPostsEvent {
  const factory ListPostsEvent.getPosts() = GetPosts;
}
