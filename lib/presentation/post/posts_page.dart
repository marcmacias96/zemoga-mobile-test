import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zemoga_mobile_test/app/inyection.dart';
import 'package:zemoga_mobile_test/app/l10n/l10n.dart';
import 'package:zemoga_mobile_test/domain/post/post.dart';
import 'package:zemoga_mobile_test/logic/list_posts/list_posts_bloc.dart';
import 'package:zemoga_mobile_test/presentation/routes/route_name.dart';

class PostsPage extends StatefulWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  int position = 0;
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return DefaultTabController(
      length: 2,
      child: BlocProvider(
        create: (context) => getIt<ListPostsBloc>()
          ..add(
            const ListPostsEvent.getPosts(),
          ),
        child: BlocBuilder<ListPostsBloc, ListPostsState>(
          builder: (context, state) {
            return Scaffold(
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () => context
                    .read<ListPostsBloc>()
                    .add(const ListPostsEvent.removeAllFavorite()),
                child: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ),
              appBar: AppBar(
                title: Text(localizations.postsTitle),
                bottom: TabBar(
                  onTap: (index) {
                    setState(() {
                      position = index;
                    });
                  },
                  tabs: const [
                    Tab(
                      icon: Icon(Icons.list),
                    ),
                    Tab(
                      icon: Icon(Icons.favorite),
                    ),
                  ],
                ),
              ),
              body: state.map(
                initial: (_) => Container(),
                loadInProgress: (_) => const Center(
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: CircularProgressIndicator.adaptive(),
                  ),
                ),
                loaded: (loaded) => getIsEmpty(
                  position == 0 ? loaded.posts : loaded.favorites,
                )
                    ? ListView.separated(
                        itemCount: position == 0
                            ? loaded.posts.length
                            : loaded.favorites.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            onTap: () async {
                              await Navigator.pushNamed(
                                context,
                                RouteName.postDetails,
                                arguments: position == 0
                                    ? loaded.posts[index]
                                    : loaded.favorites[index],
                              );
                              await Future.delayed(
                                const Duration(milliseconds: 200),
                              );
                              if (mounted) {
                                context
                                    .read<ListPostsBloc>()
                                    .add(const ListPostsEvent.getPosts());
                              }
                            },
                            title: Text(
                              position == 0
                                  ? loaded.posts[index].title
                                  : loaded.favorites[index].title,
                            ),
                            trailing: Visibility(
                              visible: loaded.favorites.contains(
                                    loaded.posts[index],
                                  ) &&
                                  position == 0,
                              child: const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Divider();
                        },
                      )
                    : const Center(
                        child: Text('No posts'),
                      ),
                loadError: (_) => const Center(
                  child: Text('Error'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  bool getIsEmpty(List<Post> posts) {
    return posts.isNotEmpty;
  }
}
