// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_posts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListPostsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Post> posts, List<Post> favorites) loaded,
    required TResult Function() loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Post> posts, List<Post> favorites)? loaded,
    TResult Function()? loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Post> posts, List<Post> favorites)? loaded,
    TResult Function()? loadError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadError value) loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadError value)? loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadError value)? loadError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListPostsStateCopyWith<$Res> {
  factory $ListPostsStateCopyWith(
          ListPostsState value, $Res Function(ListPostsState) then) =
      _$ListPostsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListPostsStateCopyWithImpl<$Res>
    implements $ListPostsStateCopyWith<$Res> {
  _$ListPostsStateCopyWithImpl(this._value, this._then);

  final ListPostsState _value;
  // ignore: unused_field
  final $Res Function(ListPostsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ListPostsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ListPostsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Post> posts, List<Post> favorites) loaded,
    required TResult Function() loadError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Post> posts, List<Post> favorites)? loaded,
    TResult Function()? loadError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Post> posts, List<Post> favorites)? loaded,
    TResult Function()? loadError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadError value) loadError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadError value)? loadError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ListPostsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$ListPostsStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'ListPostsState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Post> posts, List<Post> favorites) loaded,
    required TResult Function() loadError,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Post> posts, List<Post> favorites)? loaded,
    TResult Function()? loadError,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Post> posts, List<Post> favorites)? loaded,
    TResult Function()? loadError,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadError value) loadError,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadError value)? loadError,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ListPostsState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<Post> posts, List<Post> favorites});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$ListPostsStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? posts = freezed,
    Object? favorites = freezed,
  }) {
    return _then(_Loaded(
      posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(final List<Post> posts, final List<Post> favorites)
      : _posts = posts,
        _favorites = favorites;

  final List<Post> _posts;
  @override
  List<Post> get posts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  final List<Post> _favorites;
  @override
  List<Post> get favorites {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  String toString() {
    return 'ListPostsState.loaded(posts: $posts, favorites: $favorites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.posts, posts) &&
            const DeepCollectionEquality().equals(other.favorites, favorites));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(posts),
      const DeepCollectionEquality().hash(favorites));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Post> posts, List<Post> favorites) loaded,
    required TResult Function() loadError,
  }) {
    return loaded(posts, favorites);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Post> posts, List<Post> favorites)? loaded,
    TResult Function()? loadError,
  }) {
    return loaded?.call(posts, favorites);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Post> posts, List<Post> favorites)? loaded,
    TResult Function()? loadError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(posts, favorites);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadError value) loadError,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadError value)? loadError,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ListPostsState {
  const factory _Loaded(final List<Post> posts, final List<Post> favorites) =
      _$_Loaded;

  List<Post> get posts => throw _privateConstructorUsedError;
  List<Post> get favorites => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadErrorCopyWith<$Res> {
  factory _$LoadErrorCopyWith(
          _LoadError value, $Res Function(_LoadError) then) =
      __$LoadErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadErrorCopyWithImpl<$Res> extends _$ListPostsStateCopyWithImpl<$Res>
    implements _$LoadErrorCopyWith<$Res> {
  __$LoadErrorCopyWithImpl(_LoadError _value, $Res Function(_LoadError) _then)
      : super(_value, (v) => _then(v as _LoadError));

  @override
  _LoadError get _value => super._value as _LoadError;
}

/// @nodoc

class _$_LoadError implements _LoadError {
  const _$_LoadError();

  @override
  String toString() {
    return 'ListPostsState.loadError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Post> posts, List<Post> favorites) loaded,
    required TResult Function() loadError,
  }) {
    return loadError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Post> posts, List<Post> favorites)? loaded,
    TResult Function()? loadError,
  }) {
    return loadError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Post> posts, List<Post> favorites)? loaded,
    TResult Function()? loadError,
    required TResult orElse(),
  }) {
    if (loadError != null) {
      return loadError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadError value) loadError,
  }) {
    return loadError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadError value)? loadError,
  }) {
    return loadError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (loadError != null) {
      return loadError(this);
    }
    return orElse();
  }
}

abstract class _LoadError implements ListPostsState {
  const factory _LoadError() = _$_LoadError;
}

/// @nodoc
mixin _$ListPostsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPosts,
    required TResult Function() getFavoritePosts,
    required TResult Function() removeAllFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPosts,
    TResult Function()? getFavoritePosts,
    TResult Function()? removeAllFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPosts,
    TResult Function()? getFavoritePosts,
    TResult Function()? removeAllFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPosts value) getPosts,
    required TResult Function(GetFavoritePosts value) getFavoritePosts,
    required TResult Function(RemoveAllFavorite value) removeAllFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetPosts value)? getPosts,
    TResult Function(GetFavoritePosts value)? getFavoritePosts,
    TResult Function(RemoveAllFavorite value)? removeAllFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPosts value)? getPosts,
    TResult Function(GetFavoritePosts value)? getFavoritePosts,
    TResult Function(RemoveAllFavorite value)? removeAllFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListPostsEventCopyWith<$Res> {
  factory $ListPostsEventCopyWith(
          ListPostsEvent value, $Res Function(ListPostsEvent) then) =
      _$ListPostsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListPostsEventCopyWithImpl<$Res>
    implements $ListPostsEventCopyWith<$Res> {
  _$ListPostsEventCopyWithImpl(this._value, this._then);

  final ListPostsEvent _value;
  // ignore: unused_field
  final $Res Function(ListPostsEvent) _then;
}

/// @nodoc
abstract class $GetPostsCopyWith<$Res> {
  factory $GetPostsCopyWith(GetPosts value, $Res Function(GetPosts) then) =
      _$GetPostsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPostsCopyWithImpl<$Res> extends _$ListPostsEventCopyWithImpl<$Res>
    implements $GetPostsCopyWith<$Res> {
  _$GetPostsCopyWithImpl(GetPosts _value, $Res Function(GetPosts) _then)
      : super(_value, (v) => _then(v as GetPosts));

  @override
  GetPosts get _value => super._value as GetPosts;
}

/// @nodoc

class _$GetPosts implements GetPosts {
  const _$GetPosts();

  @override
  String toString() {
    return 'ListPostsEvent.getPosts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetPosts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPosts,
    required TResult Function() getFavoritePosts,
    required TResult Function() removeAllFavorite,
  }) {
    return getPosts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPosts,
    TResult Function()? getFavoritePosts,
    TResult Function()? removeAllFavorite,
  }) {
    return getPosts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPosts,
    TResult Function()? getFavoritePosts,
    TResult Function()? removeAllFavorite,
    required TResult orElse(),
  }) {
    if (getPosts != null) {
      return getPosts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPosts value) getPosts,
    required TResult Function(GetFavoritePosts value) getFavoritePosts,
    required TResult Function(RemoveAllFavorite value) removeAllFavorite,
  }) {
    return getPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetPosts value)? getPosts,
    TResult Function(GetFavoritePosts value)? getFavoritePosts,
    TResult Function(RemoveAllFavorite value)? removeAllFavorite,
  }) {
    return getPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPosts value)? getPosts,
    TResult Function(GetFavoritePosts value)? getFavoritePosts,
    TResult Function(RemoveAllFavorite value)? removeAllFavorite,
    required TResult orElse(),
  }) {
    if (getPosts != null) {
      return getPosts(this);
    }
    return orElse();
  }
}

abstract class GetPosts implements ListPostsEvent {
  const factory GetPosts() = _$GetPosts;
}

/// @nodoc
abstract class $GetFavoritePostsCopyWith<$Res> {
  factory $GetFavoritePostsCopyWith(
          GetFavoritePosts value, $Res Function(GetFavoritePosts) then) =
      _$GetFavoritePostsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetFavoritePostsCopyWithImpl<$Res>
    extends _$ListPostsEventCopyWithImpl<$Res>
    implements $GetFavoritePostsCopyWith<$Res> {
  _$GetFavoritePostsCopyWithImpl(
      GetFavoritePosts _value, $Res Function(GetFavoritePosts) _then)
      : super(_value, (v) => _then(v as GetFavoritePosts));

  @override
  GetFavoritePosts get _value => super._value as GetFavoritePosts;
}

/// @nodoc

class _$GetFavoritePosts implements GetFavoritePosts {
  const _$GetFavoritePosts();

  @override
  String toString() {
    return 'ListPostsEvent.getFavoritePosts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetFavoritePosts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPosts,
    required TResult Function() getFavoritePosts,
    required TResult Function() removeAllFavorite,
  }) {
    return getFavoritePosts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPosts,
    TResult Function()? getFavoritePosts,
    TResult Function()? removeAllFavorite,
  }) {
    return getFavoritePosts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPosts,
    TResult Function()? getFavoritePosts,
    TResult Function()? removeAllFavorite,
    required TResult orElse(),
  }) {
    if (getFavoritePosts != null) {
      return getFavoritePosts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPosts value) getPosts,
    required TResult Function(GetFavoritePosts value) getFavoritePosts,
    required TResult Function(RemoveAllFavorite value) removeAllFavorite,
  }) {
    return getFavoritePosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetPosts value)? getPosts,
    TResult Function(GetFavoritePosts value)? getFavoritePosts,
    TResult Function(RemoveAllFavorite value)? removeAllFavorite,
  }) {
    return getFavoritePosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPosts value)? getPosts,
    TResult Function(GetFavoritePosts value)? getFavoritePosts,
    TResult Function(RemoveAllFavorite value)? removeAllFavorite,
    required TResult orElse(),
  }) {
    if (getFavoritePosts != null) {
      return getFavoritePosts(this);
    }
    return orElse();
  }
}

abstract class GetFavoritePosts implements ListPostsEvent {
  const factory GetFavoritePosts() = _$GetFavoritePosts;
}

/// @nodoc
abstract class $RemoveAllFavoriteCopyWith<$Res> {
  factory $RemoveAllFavoriteCopyWith(
          RemoveAllFavorite value, $Res Function(RemoveAllFavorite) then) =
      _$RemoveAllFavoriteCopyWithImpl<$Res>;
}

/// @nodoc
class _$RemoveAllFavoriteCopyWithImpl<$Res>
    extends _$ListPostsEventCopyWithImpl<$Res>
    implements $RemoveAllFavoriteCopyWith<$Res> {
  _$RemoveAllFavoriteCopyWithImpl(
      RemoveAllFavorite _value, $Res Function(RemoveAllFavorite) _then)
      : super(_value, (v) => _then(v as RemoveAllFavorite));

  @override
  RemoveAllFavorite get _value => super._value as RemoveAllFavorite;
}

/// @nodoc

class _$RemoveAllFavorite implements RemoveAllFavorite {
  const _$RemoveAllFavorite();

  @override
  String toString() {
    return 'ListPostsEvent.removeAllFavorite()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RemoveAllFavorite);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPosts,
    required TResult Function() getFavoritePosts,
    required TResult Function() removeAllFavorite,
  }) {
    return removeAllFavorite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPosts,
    TResult Function()? getFavoritePosts,
    TResult Function()? removeAllFavorite,
  }) {
    return removeAllFavorite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPosts,
    TResult Function()? getFavoritePosts,
    TResult Function()? removeAllFavorite,
    required TResult orElse(),
  }) {
    if (removeAllFavorite != null) {
      return removeAllFavorite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPosts value) getPosts,
    required TResult Function(GetFavoritePosts value) getFavoritePosts,
    required TResult Function(RemoveAllFavorite value) removeAllFavorite,
  }) {
    return removeAllFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetPosts value)? getPosts,
    TResult Function(GetFavoritePosts value)? getFavoritePosts,
    TResult Function(RemoveAllFavorite value)? removeAllFavorite,
  }) {
    return removeAllFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPosts value)? getPosts,
    TResult Function(GetFavoritePosts value)? getFavoritePosts,
    TResult Function(RemoveAllFavorite value)? removeAllFavorite,
    required TResult orElse(),
  }) {
    if (removeAllFavorite != null) {
      return removeAllFavorite(this);
    }
    return orElse();
  }
}

abstract class RemoveAllFavorite implements ListPostsEvent {
  const factory RemoveAllFavorite() = _$RemoveAllFavorite;
}
