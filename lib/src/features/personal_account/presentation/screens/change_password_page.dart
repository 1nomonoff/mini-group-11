import 'package:flutter/material.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/utils/auth_validators.dart';
import 'package:mini_group_11/src/core/utils/text_style_extension.dart';
import 'package:mini_group_11/src/core/widgets/blue_button_widget.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/widgets/custom_rich_text.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/widgets/custom_text_form_field.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final TextEditingController _currentPasswordController =
      TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void dispose() {
    super.dispose();
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Text(
            'Сменить пароль',
            style: context.titleLarge.copyWith(
              fontSize: 20,
              color: AppColors.darkgrey,
            ),
          ),
          SizedBox(height: 20),
          Form(
            key: _formKey,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: AppColors.borderColor, width: 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomRichText(text: 'Текущий пароль'),
                  SizedBox(height: 10),
                  CustomTextFormField(
                    controller: _currentPasswordController,
                    validator: AuthValidators.passwordValidator,
                    text: 'Введите пароль',
                    isPassword: true,
                  ),
                  SizedBox(height: 20),
                  CustomRichText(text: 'Новый пароль'),
                  SizedBox(height: 10),
                  CustomTextFormField(
                    controller: _newPasswordController,
                    validator: AuthValidators.passwordValidator,
                    text: 'Введите пароль',
                    isPassword: true,
                  ),
                  SizedBox(height: 20),
                  CustomRichText(text: 'Повторите пароль'),
                  SizedBox(height: 10),
                  CustomTextFormField(
                    controller: _confirmPasswordController,
                    validator: AuthValidators.passwordValidator,
                    text: 'Введите пароль',
                    isPassword: true,
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 64,
                    child: BlueButtonWidget(
                      onTap: () {
                        if (_formKey.currentState!.validate() == true) {
                          Navigator.pushNamed(context, '/personal_account');
                        }
                      },
                      title: 'СОХРАНИТЬ',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
