import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/consts/gen/assets.gen.dart';
import 'package:mini_group_11/src/core/utils/text_style_extension.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/widgets/info_bottom_sheet.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/widgets/orders_container.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/widgets/pa_container.dart';

class PersonalAccountPage extends StatelessWidget {
  const PersonalAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 182, child: Text('HOME')),
                  Row(
                    spacing: 10,
                    children: [
                      Text(
                        'Стройоптторг',
                        style: GoogleFonts.roboto(
                          color: AppColors.darkgrey,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        '/',
                        style: GoogleFonts.roboto(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        'Личный кабинет',
                        style: GoogleFonts.roboto(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Text(
                    'Личный кабинет',
                    style: GoogleFonts.roboto(
                      color: AppColors.darkgrey,
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Здравствуйте, Евгений',
                    style: GoogleFonts.roboto(
                      color: AppColors.darkgrey,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 158,
                          height: 133,
                          decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(Assets.icons.categorymenu),
                              Text(
                                'МОИ ЗАКАЗЫ',
                                style: GoogleFonts.roboto(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      PAContainer(
                        svg: Assets.icons.editprofile,
                        text: 'ИЗМЕНИТЬ ПРОФИЛЬ',
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      PAContainer(
                        svg: Assets.icons.share,
                        text: 'АДРЕС ДОСТАВКИ',
                      ),
                      SizedBox(width: 15),
                      PAContainer(svg: Assets.icons.like1, text: 'ИЗБРАННОЕ'),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      PAContainer(
                        svg: Assets.icons.parol,
                        text: 'СМЕНИТЬ ПАРОЛЬ',
                      ),
                      SizedBox(width: 15),
                      PAContainer(svg: Assets.icons.logout, text: 'ВЫЙТИ'),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Текущие заказы',
                    style: GoogleFonts.roboto(
                      color: AppColors.darkgrey,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  OrdersContainer(text: 'ОБРАБОТКА', color: AppColors.orange1),
                  SizedBox(height: 15),
                  OrdersContainer(text: 'ВЫПОЛНЕН', color: AppColors.darkgreen),
                  SizedBox(height: 15),
                  OrdersContainer(text: 'ОТМЕНЕН', color: AppColors.red2),
                ],
              ),
            ),
            SizedBox(height: 68),
            Container(
              padding: EdgeInsets.all(15.0),
              color: AppColors.lightgrey,
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        Assets.images.logo.path,
                        width: 159,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email:',
                            style: GoogleFonts.roboto(
                              color: AppColors.black4,
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            'info@stroiopttorg.ru',
                            style: GoogleFonts.roboto(
                              color: AppColors.blue5,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              decoration: TextDecoration.underline,
                              decorationColor: AppColors.blue5,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '8 800 444 00 65',
                            style: GoogleFonts.roboto(
                              color: AppColors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Ежедневно, с 8:00 до 18:00',
                            style: GoogleFonts.roboto(
                              color: AppColors.grey1,
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: AppColors.red1, width: 1),
                          fixedSize: Size(151, 44),
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(4.0),
                          ),
                        ),
                        child: Text(
                          'ЗАКАЗАТЬ ЗВОНОК',
                          style: GoogleFonts.roboto(
                            color: AppColors.grey2,
                            fontWeight: FontWeight.w700,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Divider(color: AppColors.white3, height: 1),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 5, 10),
                    decoration: BoxDecoration(
                      border: Border.symmetric(
                        vertical: BorderSide(width: 1, color: AppColors.white3),
                      ),
                    ),
                    child: ExpansionTile(
                      title: Text(
                        'Информация',
                        style: context.titleMedium.copyWith(
                          color: AppColors.darkgrey,
                          fontSize: 17,
                        ),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('О компании'),
                                    Text('Доставка'),
                                    Text('Отзывы'),
                                    Text('Новости'),
                                    Text('Вход \\ Регистрация'),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Оплата'),
                                    Text('Возврат'),
                                    Text('Вопрос-ответ'),
                                    Text('Контакты'),
                                    Text('Все акции'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(color: AppColors.white3, height: 1),
                  SizedBox(height: 18),
                  SizedBox(height: 18),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
