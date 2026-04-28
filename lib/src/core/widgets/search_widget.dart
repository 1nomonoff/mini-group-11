import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/consts/gen/assets.gen.dart';
import 'package:mini_group_11/src/core/utils/check_device_extension.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 186,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.primaryblue,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              height: 42,
              width: context.checkDevice() == DeviceType.mobile ? 144 : 487,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                decoration: const InputDecoration(
                  hintStyle: TextStyle(color: Colors.blueGrey),
                  hintText: "Поиск...",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                ),
              ),
            ),
          ),
          SizedBox(width: context.checkDevice() == DeviceType.mobile ? 9 : 21),
          SvgPicture.asset(Assets.icons.search),
        ],
      ),
    );
  }
}
