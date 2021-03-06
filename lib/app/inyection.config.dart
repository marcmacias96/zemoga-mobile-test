// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i4;

import '../data/core/clients_injectable_module.dart' as _i9;
import '../data/post/post_repository.dart' as _i6;
import '../domain/post/i_post_repository.dart' as _i5;
import '../logic/list_posts/list_posts_bloc.dart' as _i7;
import '../logic/post/post_bloc.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final clientsInjectableModule = _$ClientsInjectableModule();
  gh.lazySingleton<_i3.Dio>(() => clientsInjectableModule.httpClient);
  gh.lazySingleton<_i4.Logger>(() => clientsInjectableModule.logger);
  gh.lazySingleton<_i5.IPostRepository>(
      () => _i6.PostRepository(get<_i3.Dio>(), get<_i4.Logger>()));
  gh.factory<_i7.ListPostsBloc>(
      () => _i7.ListPostsBloc(get<_i5.IPostRepository>()));
  gh.factory<_i8.PostBloc>(() => _i8.PostBloc(get<_i5.IPostRepository>()));
  return get;
}

class _$ClientsInjectableModule extends _i9.ClientsInjectableModule {}
