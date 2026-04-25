import 'package:flutter/material.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/utils/auth_validators.dart';
import 'package:mini_group_11/src/core/utils/text_style_extension.dart';
import 'package:mini_group_11/src/core/widgets/blue_button_widget.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/widgets/custom_rich_text.dart';
import 'package:mini_group_11/src/core/widgets/custom_text_form_field.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _regionController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
    _phoneController.dispose();
    _regionController.dispose();
    super.dispose();
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
            'Изменить профиль',
            style: context.titleLarge.copyWith(
              fontSize: 20,
              color: AppColors.darkgrey,
            ),
          ),
          SizedBox(height: 25),
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
                  CustomRichText(text: 'Email'),
                  SizedBox(height: 10),
                  CustomTextFormField(
                    controller: _emailController,
                    validator: AuthValidators.emailValidator,
                    text: 'Введите ваш email',
                  ),
                  SizedBox(height: 20),
                  CustomRichText(text: 'ФИО'),
                  SizedBox(height: 10),
                  CustomTextFormField(
                    controller: _nameController,
                    text: 'Введите ваше имя',
                  ),
                  SizedBox(height: 20),
                  CustomRichText(text: 'Номер телефона'),
                  SizedBox(height: 10),
                  CustomTextFormField(
                    controller: _phoneController,
                    text: '+7 (   )    -    -',
                  ),
                  SizedBox(height: 20),
                  CustomRichText(text: 'Регион'),
                  SizedBox(height: 10),
                  CustomTextFormField(
                    controller: _regionController,
                    text: 'Ваш регион',
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
                      title: 'СОХРАНИТЬ ИЗМЕНЕНИЯ',
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
