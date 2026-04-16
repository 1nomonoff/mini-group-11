import 'package:flutter/material.dart';
import 'package:mini_group_11/src/features/authorization/presentation/screens/confirm_order_screen.dart';
import 'package:mini_group_11/src/features/authorization/presentation/screens/privacy_policy.dart';
import 'package:mini_group_11/src/features/authorization/presentation/screens/confirm_screen.dart';
import 'package:mini_group_11/src/features/authorization/presentation/screens/authorization_screen.dart';
import 'package:mini_group_11/src/features/authorization/presentation/screens/recovery_screen.dart';


class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings){
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
      default:
    }
  }
  static MaterialPageRoute customRouter(Widget page) => MaterialPageRoute(builder: (context) => page);
}