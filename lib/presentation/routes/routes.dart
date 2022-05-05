import 'dart:io';

import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:zemoga_mobile_test/presentation/post/posts_page.dart';
import 'package:zemoga_mobile_test/presentation/routes/route_name.dart';
import 'package:zemoga_mobile_test/presentation/routes/slide_page_route.dart';

class AppRoutes {
  const AppRoutes._();

  static const String initialRoute = RouteName.initialRoute;

  static Widget _builder(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.initialRoute:
        return const PostsPage();
      default:
        return const PostsPage();
    }
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    if (Platform.isIOS) {
      return MaterialWithModalsPageRoute(
        builder: (_) => _builder(settings),
        settings: settings,
      );
    } else {
      return SlidePageRoute(
        builder: (_) => _builder(settings),
        settings: settings,
      );
    }
  }
}
