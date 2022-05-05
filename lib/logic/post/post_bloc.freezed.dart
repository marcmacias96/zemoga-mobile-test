// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostEvent {
  Post get post => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) getPostData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? getPostData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? getPostData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPostData value) getPostData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetPostData value)? getPostData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPostData value)? getPostData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostEventCopyWith<PostEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEventCopyWith<$Res> {
  factory $PostEventCopyWith(PostEvent value, $Res Function(PostEvent) then) =
      _$PostEventCopyWithImpl<$Res>;
  $Res call({Post post});
}

/// @nodoc
class _$PostEventCopyWithImpl<$Res> implements $PostEventCopyWith<$Res> {
  _$PostEventCopyWithImpl(this._value, this._then);

  final PostEvent _value;
  // ignore: unused_field
  final $Res Function(PostEvent) _then;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(_value.copyWith(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }
}

/// @nodoc
abstract class $GetPostDataCopyWith<$Res> implements $PostEventCopyWith<$Res> {
  factory $GetPostDataCopyWith(
          GetPostData value, $Res Function(GetPostData) then) =
      _$GetPostDataCopyWithImpl<$Res>;
  @override
  $Res call({Post post});
}

/// @nodoc
class _$GetPostDataCopyWithImpl<$Res> extends _$PostEventCopyWithImpl<$Res>
    implements $GetPostDataCopyWith<$Res> {
  _$GetPostDataCopyWithImpl(
      GetPostData _value, $Res Function(GetPostData) _then)
      : super(_value, (v) => _then(v as GetPostData));

  @override
  GetPostData get _value => super._value as GetPostData;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(GetPostData(
      post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }
}

/// @nodoc

class _$GetPostData implements GetPostData {
  const _$GetPostData(this.post);

  @override
  final Post post;

  @override
  String toString() {
    return 'PostEvent.getPostData(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetPostData &&
            const DeepCollectionEquality().equals(other.post, post));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(post));

  @JsonKey(ignore: true)
  @override
  $GetPostDataCopyWith<GetPostData> get copyWith =>
      _$GetPostDataCopyWithImpl<GetPostData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) getPostData,
  }) {
    return getPostData(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? getPostData,
  }) {
    return getPostData?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? getPostData,
    required TResult orElse(),
  }) {
    if (getPostData != null) {
      return getPostData(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPostData value) getPostData,
  }) {
    return getPostData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetPostData value)? getPostData,
  }) {
    return getPostData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPostData value)? getPostData,
    required TResult orElse(),
  }) {
    if (getPostData != null) {
      return getPostData(this);
    }
    return orElse();
  }
}

abstract class GetPostData implements PostEvent {
  const factory GetPostData(final Post post) = _$GetPostData;

  @override
  Post get post => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GetPostDataCopyWith<GetPostData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostState {
  Post? get post => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  List<Comment>? get comments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostStateCopyWith<PostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res>;
  $Res call({Post? post, bool isLoading, User? user, List<Comment>? comments});
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res> implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  final PostState _value;
  // ignore: unused_field
  final $Res Function(PostState) _then;

  @override
  $Res call({
    Object? post = freezed,
    Object? isLoading = freezed,
    Object? user = freezed,
    Object? comments = freezed,
  }) {
    return _then(_value.copyWith(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Post? post, bool isLoading, User? user, List<Comment>? comments});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PostStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? post = freezed,
    Object? isLoading = freezed,
    Object? user = freezed,
    Object? comments = freezed,
  }) {
    return _then(_Initial(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.post,
      required this.isLoading,
      this.user,
      final List<Comment>? comments})
      : _comments = comments;

  @override
  final Post? post;
  @override
  final bool isLoading;
  @override
  final User? user;
  final List<Comment>? _comments;
  @override
  List<Comment>? get comments {
    final value = _comments;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostState(post: $post, isLoading: $isLoading, user: $user, comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.post, post) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.comments, comments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(post),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(comments));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements PostState {
  const factory _Initial(
      {final Post? post,
      required final bool isLoading,
      final User? user,
      final List<Comment>? comments}) = _$_Initial;

  @override
  Post? get post => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  List<Comment>? get comments => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
