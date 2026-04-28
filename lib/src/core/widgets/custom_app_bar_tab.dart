import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/consts/gen/assets.gen.dart';
import 'package:mini_group_11/src/core/utils/text_style_extension.dart';

class CustomAppBarTab extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarTab({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(46);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      elevation: 0,
      leadingWidth: 150,
      leading: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Row(
          children: [
            IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: SvgPicture.asset(Assets.icons.menu1),
            ),
            Text(
              'Меню',
              style: context.titleMedium.copyWith(
                color: AppColors.darkgrey,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
      title: SizedBox(
        width: 320,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Ежедневно, с 8:00 до 18:00',
              style: context.bodySmall.copyWith(
                color: AppColors.grey1,
                fontSize: 13,
              ),
            ),
            SizedBox(width: 10),
            Expanded(child: Text('8 800 444 00 65', style: context.titleMedium,)),
          ],
        ),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 25, top: 7, bottom: 7),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.white2,
              padding: EdgeInsets.symmetric(horizontal: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(4.0),
              ),
            ),
            child: Text(
              'ЗАКАЗАТЬ ЗВОНОК',
              style: context.labelSmall.copyWith(
                color: AppColors.darkblue,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
