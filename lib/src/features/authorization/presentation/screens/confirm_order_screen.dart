import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/usecase/usecase.dart';
import 'package:mini_group_11/src/core/widgets/blue_button_widget.dart';
import 'package:mini_group_11/src/core/widgets/main_button_widget.dart';
import 'package:mini_group_11/src/core/widgets/password_field_widget.dart';
import 'package:mini_group_11/src/core/widgets/search_widget.dart';
import 'package:mini_group_11/src/core/widgets/simple_textfield_widget.dart';
import 'package:mini_group_11/src/features/authorization/data/repository/auth_repo_impl.dart';
import 'package:mini_group_11/src/features/authorization/domain/usecase/auth_sign_in_usecase.dart';

import '../../data/source/auth_data_source_impl.dart';

class ConfirmOrderScreen extends StatefulWidget {
  const ConfirmOrderScreen({super.key});

  @override
  State<ConfirmOrderScreen> createState() => _ConfirmOrderScreenState();
}

class _ConfirmOrderScreenState extends State<ConfirmOrderScreen> {
  bool isLoggedIn = false;
  bool isOn = false;
  bool isOn2 = false;
  bool isOn3 = false;
  bool isOn4 = false;
  bool isOn5 = false;
  bool isOn6 = false;
  bool isOn7 = false;
  bool isOn8 = false;
  bool isOn9 = false;
  @override
void initState() {
  super.initState();
  checkUserStatus();
}

Future<void> checkUserStatus() async {
  final result = await CheckAuthStatusUsecase(
    authRepository: AuthRepoImpl(
      authDataSource: AuthDataSourceImpl(),
    ),
  ).call(NoParams());

  result.either(
    (failure) {},
    (status) {
      setState(() {
        isLoggedIn = status;
      });
    },
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/logo.png', width: 159, height: 40),
                  SvgPicture.asset('assets/icons/profile.svg'),
                  SvgPicture.asset('assets/icons/trading.svg'),
                  SvgPicture.asset('assets/icons/like.svg'),
                  SvgPicture.asset('assets/icons/cart1.svg'),
                ],
              ),
               Row(
                  children: [
                    Expanded(
                      child: Mainbutton(),
                    ),
                    const SizedBox(width: 12), // расстояние между кнопками
                    Expanded(child: SearchWidget()),
                  ],
                ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  textAlign: TextAlign.start,
                  'Оформление заказа',
                  style: GoogleFonts.poppins(fontSize: 30),
                ),
              ),
              SizedBox(height: 32),
              if (!isOn)
  Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 14),
    margin: EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey[300]!),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Уже есть аккаунт?',
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: AppColors.black,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.lightgrey,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {
            // Здесь переход на экран входа
            Navigator.pushNamed(context, '/login');
          },
          child: Text(
            'Войти',
            style: GoogleFonts.poppins(
              color: AppColors.blue,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    ),
  ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]!),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Доставка',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 14,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300]!),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Городской округ Черкесский'),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 14,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300]!),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Черкесск'),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: isOn6 ? AppColors.blue : Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (isOn6 = true) {
                                      isOn7 = false;
                                      isOn8 = false;
                                    }
                                  });
                                },
                                icon: Icon(
                                  isOn6
                                      ? Icons.radio_button_checked
                                      : Icons.radio_button_off,
                                  color: isOn6
                                      ? AppColors.blue
                                      : AppColors.grey,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Самовывоз',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Text(
                              'К вашему приезду заказ будет скомплектован и готов к выдаче.',
                              style: TextStyle(
                                color: AppColors.darkGrey2,
                                fontSize: 13,
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: AppColors.lightgrey,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              'г. Черкесск,\nул.Октябрьская, д.301',
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: isOn7 ? AppColors.blue : Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (isOn7 = true) {
                                  isOn6 = false;
                                  isOn8 = false;
                                }
                              });
                            },
                            icon: Icon(
                              isOn7
                                  ? Icons.radio_button_checked
                                  : Icons.radio_button_off,
                              color: isOn7 ? AppColors.blue : AppColors.grey,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Доставка магазина\nЕсли же вам нужна будет доставка к определенному времени...',
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),

                    // СДЭК
                    Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: isOn8 ? AppColors.blue : Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (isOn8 = true) {
                                  isOn6 = false;
                                  isOn7 = false;
                                }
                              });
                            },
                            icon: Icon(
                              isOn8
                                  ? Icons.radio_button_checked
                                  : Icons.radio_button_off,
                              color: isOn8 ? AppColors.blue : AppColors.grey,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'СДЭК\nДоставка через сервис СДЭК до ПВЗ или курьером до двери.',
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Оплата',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (isOn2 = true) {
                                isOn3 = false;
                                isOn4 = false;
                                isOn5 = false;
                              }
                            });
                          },
                          icon: Icon(
                            isOn2
                                ? Icons.radio_button_checked
                                : Icons.radio_button_off,
                            color: isOn2 ? AppColors.blue : AppColors.grey,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text('Картой на сайте'),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (isOn3 = true) {
                                isOn2 = false;
                                isOn4 = false;
                                isOn5 = false;
                              }
                            });
                          },
                          icon: Icon(
                            isOn3
                                ? Icons.radio_button_checked
                                : Icons.radio_button_off,
                            color: isOn3 ? AppColors.blue : AppColors.grey,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text('Оплата в кассе'),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (isOn4 = true) {
                                isOn2 = false;
                                isOn3 = false;
                                isOn5 = false;
                              }
                            });
                          },
                          icon: Icon(
                            isOn4
                                ? Icons.radio_button_checked
                                : Icons.radio_button_off,
                            color: isOn4 ? AppColors.blue : AppColors.grey,
                          ),
                        ),
                        SizedBox(width: 10),
                        RichText(
                          text: TextSpan(
                            text: 'Кредит от ОТП банка',
                            style: GoogleFonts.poppins(
                              fontSize: 13,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: ' Условия предоставления',
                                style: GoogleFonts.poppins(
                                  color: AppColors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(context, '/privacy');
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (isOn5 = true) {
                                isOn2 = false;
                                isOn3 = false;
                                isOn4 = false;
                              }
                            });
                          },
                          icon: Icon(
                            isOn5
                                ? Icons.radio_button_checked
                                : Icons.radio_button_off,
                            color: isOn5 ? AppColors.blue : AppColors.grey,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              text:
                                  'Покупай со Сбером (оформление покупки в кредит)',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      ' Условия предоставления',
                                  style: GoogleFonts.poppins(
                                    color: AppColors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushNamed(context, '/privacy');
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: AppColors.lightgrey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Есть промокод? ',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                color: AppColors.black,
                              ),
                            ),
                            TextSpan(
                              text: 'Нажмите здесь, чтобы ввести его',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                color: AppColors.blue,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('Ваше имя *:', style: TextStyle(fontSize: 14)),
                    SizedBox(height: 6),
                    SimpleTextfieldWidget(title: 'Как вас зовут'),
                    SizedBox(height: 14),
                    Text('Фамилия *:', style: TextStyle(fontSize: 14)),
                    SizedBox(height: 6),
                    SimpleTextfieldWidget(title: 'Введите вашу фамилию'),
                    SizedBox(height: 14),
                    Text('Название компании:', style: TextStyle(fontSize: 14)),
                    SizedBox(height: 6),
                    SimpleTextfieldWidget(title: 'Введите название компании'),
                    SizedBox(height: 14),
                    Text('Email *:', style: TextStyle(fontSize: 14)),
                    SizedBox(height: 6),
                    SimpleTextfieldWidget(title: 'Введите ваш email адрес'),
                    SizedBox(height: 14),
                    Text('Номер телефона *:', style: TextStyle(fontSize: 14)),
                    SizedBox(height: 6),
                    SimpleTextfieldWidget(title: '+7 (___) ___-__-__'),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Checkbox(
                          side: BorderSide(color: AppColors.darkGrey2),
                          activeColor: AppColors.blue,
                          value: isOn,
                          onChanged: (value) {
                            setState(() {
                              isOn = !isOn;
                            });
                          },
                        ),
                        Text('Создать аккаунт'),
                      ],
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Комментарий к заказу:',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 6),
                    TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ), // при фокусе
                        hintStyle: TextStyle(color: AppColors.grey),
                        hintText: 'Текстовое поле',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Ваш заказ',
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/image32.png', width: 60),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Перфоратор универсальный Wander KX45-46 GF 1450W',
                          style: TextStyle(fontSize: 13),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Артикул: XJ89YHGO',
                          style: TextStyle(color: AppColors.grey, fontSize: 12),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '7 899 ₽',
                          style: TextStyle(
                            color: AppColors.blue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/image28.png', width: 60),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Перфоратор универсальный Wander KX45-46 GF 1450W',
                          style: TextStyle(fontSize: 13),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Артикул: XJ89YHGO',
                          style: TextStyle(color: AppColors.grey, fontSize: 12),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '20 000 ₽',
                          style: TextStyle(
                            color: AppColors.blue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/image31.png', width: 60),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Перфоратор универсальный Wander KX45-46 GF 1450W',
                          style: TextStyle(fontSize: 13),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Артикул: XJ89YHGO',
                          style: TextStyle(color: AppColors.grey, fontSize: 12),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '4 756 ₽',
                          style: TextStyle(
                            color: AppColors.blue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/image28.png', width: 60),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Перфоратор универсальный Wander KX45-46 GF 1450W',
                          style: TextStyle(fontSize: 13),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Артикул: XJ89YHGO',
                          style: TextStyle(color: AppColors.grey, fontSize: 12),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '20 000 ₽',
                          style: TextStyle(
                            color: AppColors.blue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Сумма'),
                  Text('43 829 ₽', style: TextStyle(color: AppColors.blue)),
                ],
              ),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Доставка'),
                  Text('0 ₽', style: TextStyle(color: AppColors.blue)),
                ],
              ),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Итого', style: GoogleFonts.poppins()),
                  Text(
                    '43 829 ₽',
                    style: TextStyle(
                      color: AppColors.blue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    side: BorderSide(color: AppColors.darkGrey2),
                    activeColor: AppColors.blue,
                    value: isOn9,
                    onChanged: (value) {
                      setState(() {
                        isOn9 = !isOn9;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Согласен с обработкой персональных данных в соответствии с политикой конфиденциальности',
                      style: GoogleFonts.poppins(fontSize: 12,color: AppColors.grey),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'ОФОРМИТЬ ЗАКАЗ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
