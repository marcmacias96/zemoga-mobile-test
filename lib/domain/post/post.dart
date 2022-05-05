class Post {
  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  final int userId;
  final int id;
  final String title;
  final String body;

  Post copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) =>
      Post(
        userId: userId ?? this.userId,
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body,
      );
}
