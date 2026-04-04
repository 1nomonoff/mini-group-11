import 'package:flutter/material.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/screens/personal_account_page.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/screens/somethin.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/personal_account':
        return customRouter(PersonalAccountPage());
      case '/some':
        return customRouter(Somethin());
      //break;
      default:
    }
  }

  static MaterialPageRoute customRouter(Widget page) =>
      MaterialPageRoute(builder: (context) => page);
}
