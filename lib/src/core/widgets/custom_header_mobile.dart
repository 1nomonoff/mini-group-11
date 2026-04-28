import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/consts/gen/assets.gen.dart';
import 'package:mini_group_11/src/core/widgets/main_button_widget.dart';
import 'package:mini_group_11/src/core/widgets/search_widget.dart';

class CustomHeaderMobile extends StatelessWidget {
  const CustomHeaderMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.symmetric(
          horizontal: BorderSide(width: 1, color: AppColors.white1),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                Assets.images.logo.path,
                height: 40,
                fit: BoxFit.cover,
              ),
              Row(
                spacing: 6,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(Assets.icons.profile),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(Assets.icons.trading),
                  ),
                  Badge(
                    label: Text('3'),
                    child: GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(Assets.icons.like),
                    ),
                  ),
                  SizedBox(width: 4),
                  Badge(
                    label: Text('3'),
                    child: GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(Assets.icons.cart1),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Mainbutton(onPressed: () {}),
              SizedBox(width: 10),
              Expanded(child: SearchWidget()),
            ],
          ),
        ],
      ),
    );
  }
}
