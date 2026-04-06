import 'package:flutter/material.dart';
import 'package:mini_group_11/src/features/authorization/presentation/screens/authorization_screen.dart';
import 'package:mini_group_11/src/features/authorization/presentation/screens/screen.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings){
    switch (settings.name) {
      case '/authorization':
        return customRouter(AuthorizationScreen());
        case '/screen':
        return customRouter(Screen());
        //break;
      default:
    }
  }
  static MaterialPageRoute customRouter(Widget page) => MaterialPageRoute(builder: (context) => page);
}