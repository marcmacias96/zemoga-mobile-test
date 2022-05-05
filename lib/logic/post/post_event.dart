part of 'post_bloc.dart';

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.getPosts(Post post) = GetPosts;
  const factory PostEvent.addToFavorite(int postId) = AddToFavorite;
}
