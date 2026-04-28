import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/consts/gen/assets.gen.dart';
import 'package:mini_group_11/src/core/utils/text_style_extension.dart';
import 'package:mini_group_11/src/core/widgets/main_button_widget.dart';
import 'package:mini_group_11/src/core/widgets/search_widget.dart';

class CustomHeaderTab extends StatelessWidget {
  const CustomHeaderTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
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
                width: 215,
                height: 54,
                fit: BoxFit.cover,
              ),
              Row(
                spacing: 27,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Icon(Icons.card_giftcard_outlined, weight: 33),
                        SizedBox(height: 12),
                        Text(
                          'Все акции',
                          style: context.bodyMedium.copyWith(
                            color: AppColors.grey3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        SvgPicture.asset(Assets.icons.profile),
                        SizedBox(height: 12),
                        Text(
                          'Войти',
                          style: context.bodyMedium.copyWith(
                            color: AppColors.grey3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        SvgPicture.asset(Assets.icons.trading),
                        SizedBox(height: 12),
                        Text(
                          'Сравнение',
                          style: context.bodyMedium.copyWith(
                            color: AppColors.grey3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Badge(
                    label: Text('3'),
                    child: GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          SvgPicture.asset(Assets.icons.like),
                          SizedBox(height: 12),
                          Text(
                            'Избранное',
                            style: context.bodyMedium.copyWith(
                              color: AppColors.grey3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Badge(
                    label: Text('3'),
                    child: GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          SvgPicture.asset(Assets.icons.cart1),
                          SizedBox(height: 12),
                          Text(
                            'Корзина',
                            style: context.bodyMedium.copyWith(
                              color: AppColors.grey3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(
                width: 154,
                height: 52,
                child: Mainbutton(onPressed: () {}),
              ),
              SizedBox(width: 10),
              Expanded(child: SearchWidget()),
            ],
          ),
        ],
      ),
    );
  }
}
