import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/consts/gen/assets.gen.dart';
import 'package:mini_group_11/src/core/utils/email_validator.dart';
import 'package:mini_group_11/src/core/utils/text_style_extension.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/widgets/info_expansion.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/widgets/info_expansion_text.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/widgets/orders_container.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/widgets/pa_container.dart';

class PersonalAccountPage extends StatefulWidget {
  const PersonalAccountPage({super.key});

  @override
  State<PersonalAccountPage> createState() => _PersonalAccountPageState();
}

class _PersonalAccountPageState extends State<PersonalAccountPage> {
  bool _infoExpanded = false;
  bool _catalogExpanded = false;
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
  }

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
                          fixedSize: Size(149, 44),
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
                  InfoExpansion(
                    title: 'Информация',
                    isExpanded: _infoExpanded,
                    onTap: () => setState(() => _infoExpanded = !_infoExpanded),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InfoExpansionText(
                                  onTap: () {},
                                  text: "О компании",
                                ),
                                SizedBox(height: 12),
                                InfoExpansionText(
                                  onTap: () {},
                                  text: "Доставка",
                                ),
                                SizedBox(height: 12),
                                InfoExpansionText(onTap: () {}, text: "Отзывы"),
                                SizedBox(height: 12),
                                InfoExpansionText(
                                  onTap: () {},
                                  text: "Новости",
                                ),
                                SizedBox(height: 12),
                                InfoExpansionText(
                                  onTap: () {},
                                  text: "Вход \\ Регистрация",
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InfoExpansionText(onTap: () {}, text: "Оплата"),
                                SizedBox(height: 12),
                                InfoExpansionText(
                                  onTap: () {},
                                  text: "Возврат",
                                ),
                                SizedBox(height: 12),
                                InfoExpansionText(
                                  onTap: () {},
                                  text: "Вопрос-ответ",
                                ),
                                SizedBox(height: 12),
                                InfoExpansionText(
                                  onTap: () {},
                                  text: "Контакты",
                                ),
                                SizedBox(height: 12),
                                InfoExpansionText(
                                  onTap: () {},
                                  text: "Все акции",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  InfoExpansion(
                    title: 'Каталог',
                    isExpanded: _catalogExpanded,
                    onTap: () =>
                        setState(() => _catalogExpanded = !_catalogExpanded),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InfoExpansionText(
                                  onTap: () {},
                                  text: "Общестроительные материалы",
                                ),
                                SizedBox(height: 12),
                                InfoExpansionText(
                                  onTap: () {},
                                  text: "Все для сауны и бани",
                                ),
                                SizedBox(height: 12),
                                InfoExpansionText(
                                  onTap: () {},
                                  text: "Инструмент",
                                ),
                                SizedBox(height: 12),
                                InfoExpansionText(
                                  onTap: () {},
                                  text: "Отделочные материалы",
                                ),
                                SizedBox(height: 12),
                                InfoExpansionText(
                                  onTap: () {},
                                  text: "Товары для дома, сада и огорода",
                                ),
                                SizedBox(height: 12),
                                InfoExpansionText(
                                  onTap: () {},
                                  text:
                                      "Водо-газоснабжение, отопление, вентиляция",
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InfoExpansionText(
                                  onTap: () {},
                                  text: "Вопрос-ответ",
                                ),
                                SizedBox(height: 12),
                                InfoExpansionText(
                                  onTap: () {},
                                  text: "Электротовары",
                                ),
                                SizedBox(height: 12),
                                InfoExpansionText(
                                  onTap: () {},
                                  text: "Сантехника",
                                ),
                                SizedBox(height: 12),
                                InfoExpansionText(
                                  onTap: () {},
                                  text: "Столярные изделия",
                                ),
                                SizedBox(height: 12),
                                InfoExpansionText(
                                  onTap: () {},
                                  text:
                                      "Спецодежда и средства индивидуальной пожарной защиты",
                                ),
                                SizedBox(height: 12),
                                InfoExpansionText(
                                  onTap: () {},
                                  text:
                                      "Метизные, такелажные и скобяные изделия",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 21),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 23,
                    children: [
                      Image.asset(
                        Assets.images.visa.path,
                        width: 47.5,
                        height: 15.5,
                        color: AppColors.grey,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        Assets.images.image4.path,
                        width: 35.4,
                        height: 22.1,
                        color: AppColors.grey,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        Assets.images.image5.path,
                        width: 23,
                        height: 23,
                        color: AppColors.grey,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        Assets.images.mir.path,
                        width: 58.4,
                        height: 15,
                        color: AppColors.grey,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  SizedBox(height: 22),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 23,
                    children: [
                      Image.asset(
                        Assets.images.xalva.path,
                        width: 76,
                        height: 14,
                        color: AppColors.grey,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        Assets.images.tinkoff.path,
                        width: 76,
                        height: 10,
                        color: AppColors.grey,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  SizedBox(height: 19),
                  Text(
                    'Подпишитесь на рассылку и будьте в курсе!',
                    style: context.labelLarge.copyWith(
                      color: AppColors.grey2,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 10),
                  Form(
                    key: _formKey,
                    child: TextFormField(
                      validator: EmailValidator.emailValidator,
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: 'Ваш email',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.grey3,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate() == true) {}
                          },
                          icon: SvgPicture.asset(Assets.icons.share2),
                        ),
                        filled: true,
                        fillColor: AppColors.white,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: AppColors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: AppColors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: AppColors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 18),
                  Divider(color: AppColors.white3, height: 1),
                  SizedBox(height: 17),
                  Text(
                    '© 2003-2023 Интернет-магазин ООО «Стройоптторг» р/с 40702810360000102415 в Ставропольское отделение №5230 ПАО Сбербанк, БИК 040702615',
                    style: context.bodySmall.copyWith(
                      color: AppColors.grey,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Политика конфиденциальности',
                    style: context.bodyMedium.copyWith(
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.grey2,
                      color: AppColors.grey2,
                    ),
                  ),
                  SizedBox(height: 10),
                  Image.asset(
                    Assets.images.readycodeLogo.path,
                    width: 129,
                    height: 22,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
