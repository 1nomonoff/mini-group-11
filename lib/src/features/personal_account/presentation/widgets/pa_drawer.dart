import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/consts/gen/assets.gen.dart';
import 'package:mini_group_11/src/core/utils/text_style_extension.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/widgets/log_out_dialog.dart';
import 'package:mini_group_11/src/features/personal_account/presentation/widgets/pa_drawer_item.dart';

class PADrawer extends StatelessWidget {
  const PADrawer({
    super.key,
    required this.selectedIndex,
    required this.onSelect,
  });

  final int? selectedIndex;
  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.widthOf(context) * 0.9,
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 23, top: 30, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Меню профиля',
                    style: context.titleMedium.copyWith(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                      color: AppColors.darkgrey,
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 26,
                      height: 26,
                      padding: EdgeInsets.all(9.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: AppColors.white2,
                      ),
                      child: SvgPicture.asset(Assets.icons.cancel),
                    ),
                  ),
                ],
              ),
            ),
            PADrawerItem(
              svg: Assets.icons.profile1,
              text: 'Мой аккаунт',
              index: -1,
              selectedIndex: selectedIndex,
              onSelect: onSelect,
            ),
            PADrawerItem(
              svg: Assets.icons.editprofile,
              text: 'Изменить профиль',
              index: 1,
              selectedIndex: selectedIndex,
              onSelect: onSelect,
            ),
            PADrawerItem(
              svg: Assets.icons.categorymenu,
              text: 'Мои заказы',
              index: 0,
              selectedIndex: selectedIndex,
              onSelect: onSelect,
            ),
            PADrawerItem(
              svg: Assets.icons.location1,
              text: 'Адрес доставки',
              index: 2,
              selectedIndex: selectedIndex,
              onSelect: onSelect,
            ),
            PADrawerItem(
              svg: Assets.icons.like1,
              text: 'Избранные товары',
              index: 3,
              selectedIndex: selectedIndex,
              onSelect: onSelect,
              badge: 7,
            ),
            PADrawerItem(
              svg: Assets.icons.parol,
              text: 'Сменить пароль',
              index: 4,
              selectedIndex: selectedIndex,
              onSelect: onSelect,
            ),
            PADrawerItem(
              svg: Assets.icons.logout,
              text: 'Выйти из аккаунта',
              index: 5,
              selectedIndex: selectedIndex,
              onSelect: (_) => showDialog(
                context: context,
                builder: (context) => LogOutDialog(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
