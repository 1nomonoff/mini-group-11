import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/consts/gen/assets.gen.dart';
import 'package:mini_group_11/src/core/utils/auth_validators.dart';
import 'package:mini_group_11/src/core/utils/text_style_extension.dart';
import 'package:mini_group_11/src/core/widgets/blue_button_widget.dart';
import 'package:mini_group_11/src/core/widgets/company_info_container.dart';
import 'package:mini_group_11/src/core/widgets/custom_app_bar.dart';
import 'package:mini_group_11/src/core/widgets/custom_header.dart';
import 'package:mini_group_11/src/core/widgets/custom_text_form_field.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/widgets/custom_rich_text.dart';
import 'package:mini_group_11/src/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:mini_group_11/src/features/sign_up/presentation/widgets/dashed_border_painter.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _regionController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  bool _isChecked = false;
  bool _isChecked1 = false;
  bool _checkboxError = false;
  bool _checkboxError1 = false;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _nameController.dispose();
    _phoneController.dispose();
    _regionController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              CustomHeader(),
              Padding(
                padding: const EdgeInsetsGeometry.only(
                  left: 15,
                  right: 15,
                  top: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        Text(
                          'Стройоптторг',
                          style: context.bodySmall.copyWith(
                            color: AppColors.darkgrey,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          '/',
                          style: context.bodySmall.copyWith(
                            color: AppColors.grey,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          'Регистрация',
                          style: context.bodySmall.copyWith(
                            color: AppColors.grey,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32),
                    Text(
                      'Регистрация',
                      style: context.headlineLarge.copyWith(
                        color: AppColors.darkgrey,
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 20),
                    BlocConsumer<SignUpCubit, SignUpState>(
                      listener: (context, state) {
                        if (state.status == SignUpStatus.loaded) {
                          Navigator.pushNamed(context, '/personal_account');
                        }
                      },
                      builder: (context, state) {
                        final errors = state.status == SignUpStatus.error
                            ? state.errors
                            : <String>[];

                        return Form(
                          key: _formKey,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 20,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: AppColors.borderColor,
                                width: 1,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (errors.isNotEmpty)
                                  Column(
                                    children: [
                                      CustomPaint(
                                        painter: DashedBorderPainter(),
                                        child: Container(
                                          width: double.infinity,
                                          padding: const EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              8.0,
                                            ),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: errors
                                                .map(
                                                  (e) => Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                          bottom: 4,
                                                        ),
                                                    child: Text(
                                                      e,
                                                      style: context.bodyMedium
                                                          .copyWith(
                                                            color:
                                                                AppColors.red3,
                                                            fontSize: 15,
                                                          ),
                                                    ),
                                                  ),
                                                )
                                                .toList(),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                    ],
                                  ),
                                CustomRichText(text: 'Email'),
                                SizedBox(height: 10),
                                CustomTextFormField(
                                  controller: _emailController,
                                  validator: AuthValidators.emailValidator,
                                  text: 'Введите ваш email адрес',
                                ),
                                SizedBox(height: 20),
                                CustomRichText(text: 'Номер телефона'),
                                SizedBox(height: 10),
                                CustomTextFormField(
                                  controller: _phoneController,
                                  validator: AuthValidators.phoneValidator,
                                  text: '+7 (___) ___ - ___ - ___',
                                ),
                                SizedBox(height: 20),
                                CustomRichText(text: 'ФИО'),
                                SizedBox(height: 10),
                                CustomTextFormField(
                                  controller: _nameController,
                                  validator: AuthValidators.nameValidator,
                                  text: 'Ваше полное имя',
                                ),
                                SizedBox(height: 20),
                                CustomRichText(text: 'Регион'),
                                SizedBox(height: 10),
                                CustomTextFormField(
                                  controller: _regionController,
                                  validator: AuthValidators.regionValidator,
                                  text: 'Ваш регион',
                                ),
                                SizedBox(height: 20),
                                CustomRichText(text: 'Пароль'),
                                SizedBox(height: 10),
                                CustomTextFormField(
                                  isPassword: true,
                                  validator: AuthValidators.passwordValidator,
                                  controller: _passwordController,
                                  text: 'Введите пароль',
                                ),
                                SizedBox(height: 20),
                                CustomRichText(text: 'Подтвердите пароль'),
                                SizedBox(height: 10),
                                CustomTextFormField(
                                  validator: AuthValidators.passwordValidator,
                                  controller: _confirmPasswordController,
                                  text: 'Введите пароль',
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Transform.scale(
                                      scale: 1.4,
                                      child: Checkbox(
                                        value: _isChecked,
                                        onChanged: (value) => setState(() {
                                          _isChecked = value!;
                                          _checkboxError = false;
                                        }),
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        visualDensity: VisualDensity.compact,
                                        activeColor: AppColors.blue,
                                        side: BorderSide(
                                          color: _checkboxError
                                              ? AppColors.red3
                                              : AppColors.borderColor,
                                          width: 1,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            4,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      'Согласен с условиями обслуживания',
                                      style: context.bodySmall.copyWith(
                                        fontSize: 13,
                                        color: AppColors.grey3,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Transform.scale(
                                      scale: 1.4,
                                      child: Checkbox(
                                        value: _isChecked1,
                                        onChanged: (value) => setState(() {
                                          _isChecked1 = value!;
                                          _checkboxError1 = false;
                                        }),
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        visualDensity: VisualDensity.compact,
                                        activeColor: AppColors.blue,
                                        side: BorderSide(
                                          color: _checkboxError1
                                              ? AppColors.red3
                                              : AppColors.borderColor,
                                          width: 1,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            4,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 12),
                                        child: Text(
                                          'Согласен с обработкой персональных данных в соответствии с политикой конфиденциальности',
                                          style: context.bodySmall.copyWith(
                                            fontSize: 13,
                                            color: AppColors.grey3,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                SizedBox(
                                  width: double.infinity,
                                  height: 64,
                                  child: BlueButtonWidget(
                                    onTap: () {
                                      setState(() {
                                        _checkboxError = !_isChecked;
                                        _checkboxError1 = !_isChecked1;
                                      });
                                      _formKey.currentState!.validate();
                                      context.read<SignUpCubit>().signUp(
                                        userInfo: {
                                          // user info yoziladi
                                        } ,
                                        email: _emailController.text,
                                        phone: _phoneController.text,
                                        name: _nameController.text,
                                        region: _regionController.text,
                                        password: _passwordController.text,
                                        confirmPassword:
                                            _confirmPasswordController.text,
                                        isChecked: _isChecked,
                                        isChecked1: _isChecked1,
                                      );
                                      if (_formKey.currentState!.validate() ==
                                          true) {
                                        Navigator.pushNamed(
                                          context,
                                          '/personal_account',
                                        );
                                      }
                                    },
                                    title: 'ЗАРЕГИСТРИРОВАТЬСЯ',
                                  ),
                                ),
                                SizedBox(height: 70),
                                Row(
                                  children: [
                                    SvgPicture.asset(Assets.icons.addprofile),
                                    SizedBox(width: 10),
                                    Text(
                                      'Уже есть аккаунт?',
                                      style: context.titleLarge.copyWith(
                                        color: AppColors.darkgrey,
                                        fontSize: 24,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15),
                                RichText(
                                  text: TextSpan(
                                    text: 'Перейдите к ',
                                    style: context.bodyLarge.copyWith(
                                      color: AppColors.grey2,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'авторизации ',
                                        style: context.bodyLarge.copyWith(
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.grey2,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            'если у вас уже есть зарегистрированный аккаунт.',
                                        style: context.bodyLarge.copyWith(
                                          color: AppColors.grey2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Align(
                                  alignment: AlignmentGeometry.center,
                                  child: SizedBox(
                                    height: 65,
                                    width: 262,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: AppColors.black1,
                                        foregroundColor: AppColors.white,
                                        minimumSize: Size(120, 40),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 16,
                                          vertical: 20,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            8.0,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'АВТОРИЗОВАТЬСЯ',
                                            style: context.bodyMedium.copyWith(
                                              color: AppColors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          SizedBox(width: 17),
                                          SvgPicture.asset(
                                            Assets.icons.right,
                                            colorFilter: ColorFilter.mode(
                                              AppColors.white,
                                              BlendMode.srcIn,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 80),
              CompanyInfoContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
