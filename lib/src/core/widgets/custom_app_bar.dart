import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/consts/gen/assets.gen.dart';
import 'package:mini_group_11/src/core/utils/text_style_extension.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(46);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      elevation: 0,
      leadingWidth: 48,
      leading: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: IconButton(
          onPressed: () => Scaffold.of(context).openDrawer(),
          icon: SvgPicture.asset(Assets.icons.menu1),
        ),
      ),
      title: Text('8 800 444 00 65', style: context.titleMedium),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15, top: 7, bottom: 7),
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