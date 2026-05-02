import 'package:flutter/material.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/utils/text_style_extension.dart';

class InfoExpansion extends StatelessWidget {
  const InfoExpansion({
    super.key,
    required this.title,
    required this.isExpanded,
    required this.onTap,
    required this.child,
  });

  final String title;
  final bool isExpanded;
  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.white3, width: 1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              height: 46,
              padding: EdgeInsets.only(top: 10, right: 5, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: context.titleMedium.copyWith(
                      color: AppColors.darkgrey,
                      fontSize: 17,
                    ),
                  ),
                  Icon(
                    isExpanded
                        ? Icons.keyboard_arrow_right
                        : Icons.keyboard_arrow_down,
                    color: AppColors.grey,
                  ),
                ],
              ),
            ),
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: isExpanded
                ? Column(
                    children: [
                      Divider(color: AppColors.white3, height: 1),
                      child,
                    ],
                  )
                : SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
