import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';

class ConfirmOrderScreen extends StatefulWidget {
  const ConfirmOrderScreen({super.key});

  @override
  State<ConfirmOrderScreen> createState() => _ConfirmOrderScreenState();
}

class _ConfirmOrderScreenState extends State<ConfirmOrderScreen> {
  bool isOn = false;
  bool isOn2 = false;
  bool isOn3 = false;
  bool isOn4 = false;
  bool isOn5 = false;
  bool isOn6 = false;
  bool isOn7 = false;
  bool isOn8 = false;
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
                        border: Border.all(color: isOn6 ? AppColors.blue : Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              IconButton(onPressed: (){
                                setState(() {
                                  isOn6 = !isOn6;
                                });
                              }, icon: Icon(
                                isOn6 ? Icons.radio_button_checked : Icons.radio_button_off,
                                color: isOn6 ? AppColors.blue : AppColors.grey,
                              )),
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
                        border: Border.all(color: isOn7 ? AppColors.blue : Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          IconButton(onPressed: (){
                            setState(() {
                              isOn7 = !isOn7;
                            });
                          }, icon: Icon(
                            isOn7 ? Icons.radio_button_checked : Icons.radio_button_off,
                            color: isOn7 ? AppColors.blue : AppColors.grey,
                          )),
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
                        border: Border.all(color: isOn8 ? AppColors.blue : Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          IconButton(onPressed: (){
                            setState(() {
                              isOn8 = !isOn8;
                            });
                          }, icon: Icon(
                            isOn8 ? Icons.radio_button_checked : Icons.radio_button_off,
                            color: isOn8 ? AppColors.blue : AppColors.grey,
                          )),
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
                              isOn2 = !isOn2;
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
                              isOn3 = !isOn3;
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
                              isOn4 = !isOn4;
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
                        Text('Кредит от ОТП банка Условия предоставления'),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isOn5 = !isOn5;
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
                          child: RichText(text:   TextSpan(
                            text: 'Оплата при получении\nПодробнее об условиях оплаты при получении',
                            style: TextStyle(fontSize: 13, color: Colors.black),
                            children: [
                              TextSpan(
                                text: ' Подробнее об условиях оплаты при получении',
                                style: TextStyle(color: AppColors.blue, decoration: TextDecoration.underline),
                                recognizer: TapGestureRecognizer()..onTap = () {},
                              ),
                            ],
                          )),
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
                      child: RichText(text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Есть промокод? ',
                            style: GoogleFonts.poppins(fontWeight: FontWeight.w500, color: AppColors.black),
                          ),
                          TextSpan(
                            text: 'Нажмите здесь, чтобы ввести его',
                            style: GoogleFonts.poppins(fontWeight: FontWeight.w500, color: AppColors.blue),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      )),
                    ),

                    SizedBox(height: 20),

                    // Форма
                    Text('Ваше имя *:', style: TextStyle(fontSize: 14)),
                    SizedBox(height: 6),
                    TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: AppColors.darkGrey2),
                        hintText: 'Как вас зовут',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.darkGrey2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),

                    SizedBox(height: 14),

                    Text('Фамилия *:', style: TextStyle(fontSize: 14)),
                    SizedBox(height: 6),
                    TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: AppColors.darkGrey2),
                        hintText: 'Введите вашу фамилию',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.darkGrey2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),

                    SizedBox(height: 14),

                    Text('Название компании:', style: TextStyle(fontSize: 14)),
                    SizedBox(height: 6),
                    TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: AppColors.darkGrey2),
                        hintText: 'Введите название вашей компании',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.darkGrey2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),

                    SizedBox(height: 14),

                    Text('Email *:', style: TextStyle(fontSize: 14)),
                    SizedBox(height: 6),
                    TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: AppColors.darkGrey2),
                        hintText: 'Введите ваш email адрес',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.darkGrey2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(height: 14),
                    Text('Номер телефона *:', style: TextStyle(fontSize: 14)),
                    SizedBox(height: 6),
                    TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: AppColors.darkGrey2),
                        hintText: '+7 (___) ___-__-__',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.red),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),

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
                      maxLines: 4,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: AppColors.darkGrey2),
                        hintText: 'Текстовое поле',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.darkGrey2),
                          borderRadius: BorderRadius.circular(8),
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
    );
  }
}
