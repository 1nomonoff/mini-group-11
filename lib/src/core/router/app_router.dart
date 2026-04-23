import 'package:flutter/material.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/screens/personal_account_page.dart';
import 'package:mini_group_11/src/features/privacy_policy/presentation/screens/privacy_policy_page.dart';
import 'package:mini_group_11/src/features/sign_up/presentation/screens/sign_up_page.dart';

class AppRouter {
  // ignore: body_might_complete_normally_nullable
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/personal_account':
        return customRouter(PersonalAccountPage());
      case '/privacy_policy':
        return customRouter(PrivacyPolicyPage());
      case '/sign_up':
        return customRouter(SignUpPage());
      //break;
      default:
    }
  }

  static MaterialPageRoute customRouter(Widget page) =>
      MaterialPageRoute(builder: (context) => page);
}
