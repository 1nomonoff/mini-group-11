

import 'package:flutter/material.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/consts/theme/app_theme.dart';
import 'package:mini_group_11/src/core/router/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini-Group-11',
      theme: AppTheme.light,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: '',
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}