import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_group_11/src/core/consts/theme/app_theme.dart';
import 'package:mini_group_11/src/core/router/app_router.dart';
import 'package:mini_group_11/src/features/sign_up/data/repository/sign_up_repository_impl.dart';
import 'package:mini_group_11/src/features/sign_up/data/source/sign_up_data_source_impl.dart';
import 'package:mini_group_11/src/features/sign_up/domain/usecase/sign_up_usecase.dart';
import 'package:mini_group_11/src/features/sign_up/presentation/cubit/sign_up_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SignUpCubit(
            signUpUsecase: SignUpUsecase(
              signUpRepository: SignUpRepositoryImpl(
                signUpDataSource: SignUpDataSourceImpl(),
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
        initialRoute: '/personal_account',
      ),
    );
  }
}
