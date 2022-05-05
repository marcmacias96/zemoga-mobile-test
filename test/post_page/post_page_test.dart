import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zemoga_mobile_test/domain/comment/comment.dart';
import 'package:zemoga_mobile_test/domain/user/user.dart';
import 'package:zemoga_mobile_test/presentation/post/post_page.dart';

void main() {
  group('Post widgets test', () {
    testWidgets(
      'User loader shows progress when loading',
      (WidgetTester tester) async {
        await tester.pumpWidget(
          const Material(child: UserLoader()),
        );
        expect(
          find.byType(CircularProgressIndicator),
          findsOneWidget,
        );
      },
    );

    testWidgets(
      'User loader shows userDaata when loaded',
      (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: UserLoader(
              user: User(
                id: 1,
                email: '',
                name: '',
                phone: '',
                username: '',
                website: '',
              ),
            ),
          ),
        );
        expect(
          find.byType(Text),
          findsNWidgets(4),
        );
      },
    );

    testWidgets(
      'Comments loader shows progress when loading',
      (WidgetTester tester) async {
        await tester.pumpWidget(
          const Material(child: CommentsLoader()),
        );
        expect(
          find.byType(CircularProgressIndicator),
          findsOneWidget,
        );
      },
    );

    testWidgets(
      'Comments loader shows comments when loaded',
      (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Material(
              child: CommentsLoader(
                contacts: [
                  Comment(
                    id: 1,
                    body: '',
                    postId: 1,
                    email: '',
                    name: '',
                  ),
                ],
              ),
            ),
          ),
        );
        expect(
          find.byType(ListView),
          findsOneWidget,
        );
      },
    );
  });
}
