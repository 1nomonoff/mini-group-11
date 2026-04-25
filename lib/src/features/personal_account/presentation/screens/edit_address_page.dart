import 'package:flutter/material.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/utils/auth_validators.dart';
import 'package:mini_group_11/src/core/utils/text_style_extension.dart';
import 'package:mini_group_11/src/core/widgets/blue_button_widget.dart';
import 'package:mini_group_11/src/core/widgets/custom_text_form_field.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/widgets/custom_rich_text.dart';

class EditAddressPage extends StatefulWidget {
  final VoidCallback onSaved;
  const EditAddressPage({super.key, required this.onSaved});

  @override
  State<EditAddressPage> createState() => _EditAddressPageState();
}

class _EditAddressPageState extends State<EditAddressPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _companyNameController = TextEditingController();
  final TextEditingController _regionController = TextEditingController();
  final TextEditingController _cityNameController = TextEditingController();
  final TextEditingController _streetNameController = TextEditingController();
  final TextEditingController _indexController = TextEditingController();
  final TextEditingController _houseNumberController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void dispose() {
    _nameController.dispose();
    _lastNameController.dispose();
    _companyNameController.dispose();
    _regionController.dispose();
    _cityNameController.dispose();
    _streetNameController.dispose();
    _indexController.dispose();
    _houseNumberController.dispose();
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
            'Мой адрес доставки',
            style: context.titleLarge.copyWith(
              fontSize: 20,
              color: AppColors.darkgrey,
            ),
          ),
          SizedBox(height: 20),
          Form(
            key: _formKey,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
                border: Border.all(color: AppColors.borderColor, width: 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomRichText(text: 'Ваше имя'),
                  SizedBox(height: 10),
                  CustomTextFormField(
                    controller: _nameController,
                    validator: AuthValidators.name1Validator,
                    text: 'Как вас зовут',
                  ),
                  SizedBox(height: 20),
                  CustomRichText(text: 'Фамилия'),
                  SizedBox(height: 10),
                  CustomTextFormField(
                    controller: _lastNameController,
                    validator: AuthValidators.lastNameValidator,
                    text: 'Введите вашу фамилию',
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Название компании:',
                    style: context.bodyMedium.copyWith(color: AppColors.black1),
                  ),
                  SizedBox(height: 10),
                  CustomTextFormField(
                    controller: _companyNameController,
                    text: 'Введите название вашей компании',
                  ),
                  SizedBox(height: 20),
                  CustomRichText(text: 'Область\\Регион'),
                  SizedBox(height: 10),
                  CustomTextFormField(
                    controller: _regionController,
                    validator: AuthValidators.regionValidator,
                    text: 'Область',
                  ),
                  SizedBox(height: 20),
                  CustomRichText(text: 'Город'),
                  SizedBox(height: 10),
                  CustomTextFormField(
                    validator: AuthValidators.cityNameValidator,
                    controller: _cityNameController,
                    text: 'Введите название вашего города',
                  ),
                  SizedBox(height: 20),
                  CustomRichText(text: 'Улица'),
                  SizedBox(height: 10),
                  CustomTextFormField(
                    validator: AuthValidators.streetNameValidator,
                    controller: _streetNameController,
                    text: 'Введите название вашей улицы',
                  ),
                  SizedBox(height: 20),
                  CustomRichText(text: 'Индекс'),
                  SizedBox(height: 10),
                  CustomTextFormField(
                    validator: AuthValidators.indexValidator,
                    controller: _indexController,
                    text: 'Введите индекс',
                  ),
                  SizedBox(height: 20),
                  CustomRichText(text: 'Номер дома \\ Квартира'),
                  SizedBox(height: 10),
                  CustomTextFormField(
                    validator: AuthValidators.houseNumberValidator,
                    controller: _houseNumberController,
                    text: 'Например 37/2',
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 64,
                    child: BlueButtonWidget(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          widget.onSaved();
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
