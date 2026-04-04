import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/utils/text_style_extension.dart';

class PADrawerItem extends StatelessWidget {
  const PADrawerItem({
    super.key,
    required this.svg,
    required this.text,
    required this.index,
    required this.selectedIndex,
    required this.onSelect,
    this.badge,
  });

  final String svg;
  final String text;
  final int index;
  final int? selectedIndex;
  final ValueChanged<int> onSelect;
  final int? badge;

  @override
  Widget build(BuildContext context) {
    final bool isSelected = selectedIndex == index;
    return InkWell(
      onTap: () {
        onSelect(index);
        Navigator.pop(context);
      },
      child: Container(
        height: 75,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 26),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.black1 : Colors.transparent,
          border: Border(
            bottom: BorderSide(width: 1, color: AppColors.borderColor),
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              svg,
              width: 23,
              height: 23,
              colorFilter: ColorFilter.mode(
                isSelected ? AppColors.white : AppColors.darkgrey,
                BlendMode.srcIn,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                text,
                style: context.titleMedium.copyWith(
                  color: isSelected ? AppColors.white : AppColors.darkgrey,
                ),
              ),
            ),
            if (badge != null)
              Container(
                width: 21,
                height: 21,
                decoration: BoxDecoration(
                  color: AppColors.red1,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  '$badge',
                  style: context.labelSmall.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: AppColors.white,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
