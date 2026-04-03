import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/consts/gen/assets.gen.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 59,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppColors.primaryblue,
      ),child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(Assets.icons.cart,height: 20,width: 24,),
      ),
    );
  }
}
