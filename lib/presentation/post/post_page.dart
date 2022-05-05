// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zemoga_mobile_test/app/inyection.dart';
import 'package:zemoga_mobile_test/app/l10n/l10n.dart';
import 'package:zemoga_mobile_test/domain/comment/comment.dart';
import 'package:zemoga_mobile_test/domain/post/post.dart';
import 'package:zemoga_mobile_test/domain/user/user.dart';
import 'package:zemoga_mobile_test/logic/post/post_bloc.dart';
import 'package:zemoga_mobile_test/presentation/routes/route_name.dart';

class PostPage extends StatelessWidget {
  const PostPage({
    Key? key,
    required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return BlocProvider(
      create: (context) => getIt<PostBloc>()
        ..add(
          PostEvent.getPosts(post),
        ),
      child: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(localizations.postTitle),
              centerTitle: false,
              actions: [
                IconButton(
                  icon: Icon(
                    state.isFavorite ? Icons.star : Icons.star_border,
                  ),
                  onPressed: () => context
                      .read<PostBloc>()
                      .add(PostEvent.addToFavorite(post.id)),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Title(title: localizations.postSubTitle1),
                  const SizedBox(height: 16),
                  Text(post.body),
                  const SizedBox(height: 16),
                  Title(title: localizations.postSubTitle2),
                  UserLoader(user: state.user),
                  const SizedBox(height: 16),
                  Title(title: localizations.postSubTitle3),
                  const SizedBox(height: 16),
                  Expanded(
                    child: CommentsLoader(
                      contacts: state.comments,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CommentsLoader extends StatelessWidget {
  const CommentsLoader({Key? key, this.contacts}) : super(key: key);

  final List<Comment>? contacts;

  @override
  Widget build(BuildContext context) {
    return contacts == null
        ? const Center(child: CircularProgressIndicator.adaptive())
        : ListView.separated(
            itemCount: contacts!.length,
            itemBuilder: (context, index) {
              return ListTile(
                subtitle: Text(contacts![index].body),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
          );
  }
}

class Title extends StatelessWidget {
  const Title({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class UserLoader extends StatelessWidget {
  const UserLoader({Key? key, this.user}) : super(key: key);
  final User? user;

  @override
  Widget build(BuildContext context) {
    return user == null
        ? const CircularProgressIndicator.adaptive()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Text(user!.name),
              Text(user!.email),
              Text(user!.phone),
              Text(user!.website),
            ],
          );
  }
}
