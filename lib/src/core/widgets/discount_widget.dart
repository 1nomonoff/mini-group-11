
import 'package:flutter/material.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';

class DiscountWidget extends StatelessWidget {
  final String skitka;
  const DiscountWidget({
    super.key,required this.skitka
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 38,
      decoration: BoxDecoration(
        color: AppColors.green,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          skitka,
          style: TextStyle(fontSize: 11, color: AppColors.white),
        ),
      ),
    );
  }
}
