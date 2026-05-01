import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/consts/gen/assets.gen.dart';
import 'package:mini_group_11/src/core/utils/check_device_extension.dart';
import 'package:mini_group_11/src/core/utils/text_style_extension.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/screens/edit_address_page.dart';

class MyAddressPage extends StatefulWidget {
  const MyAddressPage({super.key});

  @override
  State<MyAddressPage> createState() => _MyAddressPageState();
}

class _MyAddressPageState extends State<MyAddressPage> {
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  bool _isEditing = false;

  @override
  void dispose() {
    _addressController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _isEditing
        ? EditAddressPage(
            onSaved: () => setState(() {
              _isEditing = false;
            }),
          )
        : _buildViewMode(context);
  }

  Widget _buildViewMode(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.checkDevice() == DeviceType.mobile ? 15 : 25,
      ),
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
            child: context.checkDevice() == DeviceType.mobile
                ? Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(8.0),
                      ),
                      border: Border.all(
                        color: AppColors.borderColor,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 190,
                          height: 63,
                          padding: EdgeInsets.all(18),
                          color: AppColors.white2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                Assets.icons.location1,
                                colorFilter: ColorFilter.mode(
                                  AppColors.blue,
                                  BlendMode.srcIn,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'АДРЕС ДОСТАВКИ',
                                style: context.titleSmall.copyWith(
                                  fontSize: 13,
                                  color: AppColors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 13),
                        Text(
                          'Евгений Иванов',
                          style: context.titleLarge.copyWith(
                            fontSize: 19,
                            color: AppColors.black1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 18,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '056734, Mосква, Poccия, улица Варшавская, 37/5, кв.574',
                                style: context.titleSmall.copyWith(
                                  fontSize: 15,
                                  color: AppColors.black4,
                                ),
                              ),
                              SizedBox(height: 23),
                              Text(
                                'Телефон',
                                style: context.bodyMedium.copyWith(
                                  color: AppColors.grey5,
                                ),
                              ),
                              Text(
                                '+7 (956) 373-46-33',
                                style: context.titleSmall.copyWith(
                                  fontSize: 15,
                                  color: AppColors.black4,
                                ),
                              ),
                              SizedBox(height: 23),
                              Text(
                                'Email',
                                style: context.bodyMedium.copyWith(
                                  color: AppColors.grey5,
                                ),
                              ),
                              Text(
                                'exampleofemail@gmail.com',
                                style: context.titleSmall.copyWith(
                                  fontSize: 15,
                                  color: AppColors.black4,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                        Container(
                          width: double.infinity,
                          height: 59,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(8.0),
                            ),
                            border: Border.all(
                              color: AppColors.borderColor,
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _isEditing = true;
                                  });
                                },
                                child: Expanded(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(Assets.icons.edit),
                                      SizedBox(width: 9),
                                      Text(
                                        'Редактировать',
                                        style: context.labelSmall.copyWith(
                                          color: AppColors.black5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 30),
                              InkWell(
                                onTap: () {},
                                child: Expanded(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(Assets.icons.delete),
                                      SizedBox(width: 9),
                                      Text(
                                        'Удалить',
                                        style: context.labelSmall.copyWith(
                                          color: AppColors.black5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(8.0),
                      ),
                      border: Border.all(
                        color: AppColors.borderColor,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 21, left: 30),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Евгений Иванов',
                                    style: context.titleLarge.copyWith(
                                      fontSize: 19,
                                      color: AppColors.black1,
                                    ),
                                  ),
                                  Container(
                                    width: 190,
                                    height: 63,
                                    padding: EdgeInsets.all(18),
                                    color: AppColors.white2,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          Assets.icons.location1,
                                          colorFilter: ColorFilter.mode(
                                            AppColors.blue,
                                            BlendMode.srcIn,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'АДРЕС ДОСТАВКИ',
                                          style: context.titleSmall.copyWith(
                                            fontSize: 13,
                                            color: AppColors.blue,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 18),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 282,
                                    child: Text(
                                      '056734, Mосква, Poccия, улица Варшавская, 37/5, кв.574',
                                      maxLines: 2,
                                      style: context.titleSmall.copyWith(
                                        fontSize: 15,
                                        color: AppColors.black4,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Телефон',
                                        style: context.bodyMedium.copyWith(
                                          color: AppColors.grey5,
                                        ),
                                      ),
                                      Text(
                                        '+7 (956) 373-46-33',
                                        style: context.titleSmall.copyWith(
                                          fontSize: 15,
                                          color: AppColors.black4,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Email',
                                        style: context.bodyMedium.copyWith(
                                          color: AppColors.grey5,
                                        ),
                                      ),
                                      Text(
                                        'exampleofemail@gmail.com',
                                        style: context.titleSmall.copyWith(
                                          fontSize: 15,
                                          color: AppColors.black4,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 18),
                        Container(
                          width: 320,
                          height: 59,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(8.0),
                            ),
                            border: Border.all(
                              color: AppColors.borderColor,
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _isEditing = true;
                                  });
                                },
                                child: Expanded(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(Assets.icons.edit),
                                      SizedBox(width: 9),
                                      Text(
                                        'Редактировать',
                                        style: context.labelSmall.copyWith(
                                          color: AppColors.black5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 60),
                              InkWell(
                                onTap: () {},
                                child: Expanded(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(Assets.icons.delete),
                                      SizedBox(width: 9),
                                      Text(
                                        'Удалить',
                                        style: context.labelSmall.copyWith(
                                          color: AppColors.black5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
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
