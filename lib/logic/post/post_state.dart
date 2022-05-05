part of 'post_bloc.dart';

@freezed
class PostState with _$PostState {
  const factory PostState({
    Post? post,
    required bool isLoading,
    User? user,
    List<Comment>? comments,
    required bool isFavorite,
  }) = _Initial;

  factory PostState.initial() => const PostState(
        isLoading: true,
        isFavorite: false,
      );
}
