import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_group_11/src/core/consts/theme/app_theme.dart';
import 'package:mini_group_11/src/core/router/app_router.dart';
import 'package:mini_group_11/src/features/authorization/data/repository/auth_repo_impl.dart';
import 'package:mini_group_11/src/features/authorization/data/source/auth_data_source_impl.dart';
import 'package:mini_group_11/src/features/authorization/domain/usecase/auth_sign_in_usecase.dart';
import 'package:mini_group_11/src/features/authorization/presentation/cubit/auth_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
     providers: [
      BlocProvider(
          create: (context) => AuthCubit(
            authSignInUsercase: AuthSignInUsercase(
              authRepository: AuthRepoImpl(
                authDataSource: AuthDataSourceImpl(),
              ),
            ),
          ),
        ),
     ],
      child: MaterialApp(
        title: 'Mini-Group-11',
        theme: AppTheme.light,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: '/authorization',
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
