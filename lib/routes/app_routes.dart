import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/next_page_screen/next_page_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String nextPageScreen = '/next_page_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    nextPageScreen: (context) => NextPageScreen(),
    initialRoute: (context) => NextPageScreen()
  };
}
