import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings){
    switch (settings.name) {
      case '/':
        return customRouter(SizedBox());
        //break;
      default:
    }
  }
  static MaterialPageRoute customRouter(Widget page) => MaterialPageRoute(builder: (context) => page);
}