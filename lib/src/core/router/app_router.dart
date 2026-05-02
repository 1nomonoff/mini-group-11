import 'package:flutter/material.dart';
import 'package:mini_group_11/src/core/widgets/purchase_dialog.dart';

import 'package:mini_group_11/src/features/authorization/presentation/screens/confirm_order_screen.dart';
import 'package:mini_group_11/src/features/authorization/presentation/screens/privacy_policy.dart';
import 'package:mini_group_11/src/features/authorization/presentation/screens/confirm_screen.dart';
import 'package:mini_group_11/src/features/authorization/presentation/screens/authorization_screen.dart';
import 'package:mini_group_11/src/features/authorization/presentation/screens/recovery_screen.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/screens/personal_account_page.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/screens/privacy_policy_page.dart';


class AppRouter {
  // ignore: body_might_complete_normally_nullable
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/authorization':
        return customRouter(AuthorizationScreen());
        case '/recovery':
        return customRouter(RecoveryScreen());
        case '/confirm':
        return customRouter(ConfirmScreen());
        case '/privacy':
        return customRouter(PrivacyPolicy());
        case '/order':
        return customRouter(ConfirmOrderScreen());
      case '/personal_account':
        return customRouter(PersonalAccountPage());
      case '/privacy_policy':
        return customRouter(PrivacyPolicyPage());
      default:
    }
  }

  static MaterialPageRoute customRouter(Widget page) =>
      MaterialPageRoute(builder: (context) => page);
}
