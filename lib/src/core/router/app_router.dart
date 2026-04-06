import 'package:flutter/material.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/screens/personal_account_page.dart';

class AppRouter {
  // ignore: body_might_complete_normally_nullable
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/personal_account':
        return customRouter(PersonalAccountPage());
      //break;
      default:
    }
  }

  static MaterialPageRoute customRouter(Widget page) =>
      MaterialPageRoute(builder: (context) => page);
}
