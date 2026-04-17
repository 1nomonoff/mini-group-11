import 'package:flutter/material.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/utils/text_style_extension.dart';

class LogOutDialog extends StatelessWidget {
  const LogOutDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Выйти из аккаунта?',
        style: context.titleLarge.copyWith(
          color: AppColors.darkgrey,
        ),
      ),
      content: Text(
        'Вы уверены, что хотите выйти?',
        style: context.bodyMedium.copyWith(
          color: AppColors.grey3,
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            'Отмена',
            style: context.bodyMedium.copyWith(
              color: AppColors.darkgrey,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.blue,
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadiusGeometry.circular(30),
            ),
          ),
          child: Text(
            'Выйти',
            style: context.bodyMedium.copyWith(
              color: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }
}
