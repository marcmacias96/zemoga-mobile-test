import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zemoga_mobile_test/app/inyection.dart';
import 'package:zemoga_mobile_test/logic/list_posts/list_posts_bloc.dart';
import 'package:zemoga_mobile_test/presentation/routes/route_name.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: BlocProvider(
        create: (context) => getIt<ListPostsBloc>()
          ..add(
            const ListPostsEvent.getPosts(),
          ),
        child: BlocBuilder<ListPostsBloc, ListPostsState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => const Center(
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: CircularProgressIndicator.adaptive(),
                ),
              ),
              loaded: (loaded) => ListView.separated(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () => Navigator.pushNamed(
                      context,
                      RouteName.postDetails,
                      arguments: loaded.posts[index],
                    ),
                    title: Text(loaded.posts[index].title),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
              ),
              loadError: (error) => Container(),
            );
          },
        ),
      ),
    );
  }
}
