import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/consts/gen/assets.gen.dart';
import 'package:mini_group_11/src/core/utils/check_device_extension.dart';
import 'package:mini_group_11/src/core/utils/text_style_extension.dart';
import 'package:mini_group_11/src/core/widgets/company_info_container.dart';
import 'package:mini_group_11/src/core/widgets/custom_app_bar_mobile.dart';
import 'package:mini_group_11/src/core/widgets/custom_app_bar_tab.dart';
import 'package:mini_group_11/src/core/widgets/custom_header_mobile.dart';
import 'package:mini_group_11/src/core/widgets/custom_header_tab.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/screens/change_password_page.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/screens/edit_profile_page.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/screens/my_address_page.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/screens/my_orders_page.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/widgets/log_out_dialog.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/widgets/orders_container.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/widgets/pa_container.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/widgets/pa_drawer.dart';

class PersonalAccountPage extends StatefulWidget {
  const PersonalAccountPage({super.key});

  @override
  State<PersonalAccountPage> createState() => _PersonalAccountPageState();
}

class _PersonalAccountPageState extends State<PersonalAccountPage> {
  int? _selectedIndex;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: PADrawer(
        selectedIndex: _selectedIndex,
        onSelect: (index) => setState(() => _selectedIndex = index),
      ),
      appBar: context.checkDevice() == DeviceType.mobile
          ? CustomAppBarMobile()
          : CustomAppBarTab(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              context.checkDevice() == DeviceType.mobile
                  ? CustomHeaderMobile()
                  : CustomHeaderTab(),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Стройоптторг',
                            style: context.bodySmall.copyWith(
                              color: AppColors.darkgrey,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        Text(
                          '/',
                          style: context.bodySmall.copyWith(
                            color: AppColors.grey,
                            fontSize: 13,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Future.delayed(Duration(milliseconds: 300), () {
                              if (mounted) {
                                Navigator.pushNamed(
                                  context,
                                  '/personal_account',
                                );
                              }
                            });
                          },
                          child: Text(
                            'Личный кабинет',
                            style: context.bodySmall.copyWith(
                              color: AppColors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32),
                    Text(
                      'Личный кабинет',
                      style: context.headlineMedium.copyWith(
                        color: AppColors.darkgrey,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              if (_selectedIndex != null)
                InkWell(
                  onTap: () => _scaffoldKey.currentState!.openDrawer(),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 21),
                    decoration: BoxDecoration(
                      border: Border.symmetric(
                        horizontal: BorderSide(
                          width: 1,
                          color: AppColors.borderColor,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(Assets.icons.menu1),
                        SizedBox(width: 10),
                        Text(
                          'Меню профиля',
                          style: context.bodyLarge.copyWith(
                            color: AppColors.darkgrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              else ...[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () => setState(() => _selectedIndex = 0),
                            child: Container(
                              width: context.checkDevice() == DeviceType.mobile ? 158 : 229,
                              height: 133,
                              decoration: BoxDecoration(
                                color: AppColors.blue,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                          PAContainer(
                            svg: Assets.icons.editprofile,
                            text: 'ИЗМЕНИТЬ ПРОФИЛЬ',
                            onTap: () => setState(() => _selectedIndex = 1),
                          ),
                          SizedBox(
                            child: context.checkDevice() == DeviceType.mobile
                                ? SizedBox()
                                : PAContainer(
                                    svg: Assets.icons.share,
                                    text: 'АДРЕС ДОСТАВКИ',
                                    onTap: () =>
                                        setState(() => _selectedIndex = 2),
                                  ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            child: context.checkDevice() == DeviceType.mobile
                                ? PAContainer(
                                    svg: Assets.icons.share,
                                    text: 'АДРЕС ДОСТАВКИ',
                                    onTap: () =>
                                        setState(() => _selectedIndex = 2),
                                  )
                                : PAContainer(
                                    svg: Assets.icons.like1,
                                    text: 'ИЗБРАННОЕ',
                                    onTap: () =>
                                        setState(() => _selectedIndex = 3),
                                  ),
                          ),
                          SizedBox(
                            child: context.checkDevice() == DeviceType.mobile
                                ? PAContainer(
                                    svg: Assets.icons.like1,
                                    text: 'ИЗБРАННОЕ',
                                    onTap: () =>
                                        setState(() => _selectedIndex = 3),
                                  )
                                : PAContainer(
                                    svg: Assets.icons.parol,
                                    text: 'СМЕНИТЬ ПАРОЛЬ',
                                    onTap: () =>
                                        setState(() => _selectedIndex = 4),
                                  ),
                          ),
                          SizedBox(
                            child: context.checkDevice() == DeviceType.mobile
                                ? null
                                : PAContainer(
                                    svg: Assets.icons.logout,
                                    text: 'ВЫЙТИ',
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) => LogOutDialog(),
                                      );
                                    },
                                  ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      SizedBox(
                        child: context.checkDevice() == DeviceType.mobile ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          PAContainer(
                            svg: Assets.icons.parol,
                            text: 'СМЕНИТЬ ПАРОЛЬ',
                            onTap: () => setState(() => _selectedIndex = 4),
                          ),
                          PAContainer(
                            svg: Assets.icons.logout,
                            text: 'ВЫЙТИ',
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => LogOutDialog(),
                              );
                            },
                          ),
                        ],
                      ) : null,
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
                      OrdersContainer(
                        text: 'ОБРАБОТКА',
                        color: AppColors.orange1,
                      ),
                      SizedBox(height: 15),
                      OrdersContainer(
                        text: 'ВЫПОЛНЕН',
                        color: AppColors.darkgreen,
                      ),
                      SizedBox(height: 15),
                      OrdersContainer(text: 'ОТМЕНЕН', color: AppColors.red2),
                    ],
                  ),
                ),
              ],
              if (_selectedIndex == 0)
                const MyOrdersPage()
              else if (_selectedIndex == 1)
                const EditProfilePage()
              else if (_selectedIndex == 2)
                const MyAddressPage()
              else if (_selectedIndex == 3)
                const SizedBox()
              else if (_selectedIndex == 4)
                const ChangePasswordPage(),
              SizedBox(height: 80),
              CompanyInfoContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
