import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/consts/gen/assets.gen.dart';
import 'package:mini_group_11/src/core/utils/auth_validators.dart';
import 'package:mini_group_11/src/core/utils/text_style_extension.dart';

class BottomPartICMobile extends StatelessWidget {
  const BottomPartICMobile({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
  }) : _formKey = formKey,
       _emailController = emailController;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 23,
          children: [
            Image.asset(
              Assets.images.visa.path,
              width: 47.5,
              height: 15.5,
              color: AppColors.grey,
              fit: BoxFit.cover,
            ),
            Image.asset(
              Assets.images.image4.path,
              width: 35.4,
              height: 22.1,
              color: AppColors.grey,
              fit: BoxFit.cover,
            ),
            Image.asset(
              Assets.images.image5.path,
              width: 23,
              height: 23,
              color: AppColors.grey,
              fit: BoxFit.cover,
            ),
            Image.asset(
              Assets.images.mir.path,
              width: 58.4,
              height: 15,
              color: AppColors.grey,
              fit: BoxFit.cover,
            ),
          ],
        ),
        SizedBox(height: 22),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 23,
          children: [
            Image.asset(
              Assets.images.xalva.path,
              width: 76,
              height: 14,
              color: AppColors.grey,
              fit: BoxFit.cover,
            ),
            Image.asset(
              Assets.images.tinkoff.path,
              width: 76,
              height: 10,
              color: AppColors.grey,
              fit: BoxFit.cover,
            ),
          ],
        ),
        SizedBox(height: 19),
        Text(
          'Подпишитесь на рассылку и будьте в курсе!',
          style: context.labelLarge.copyWith(
            color: AppColors.grey2,
            fontSize: 15,
          ),
        ),
        SizedBox(height: 10),
        Form(
          key: _formKey,
          child: TextFormField(
            validator: AuthValidators.emailValidator,
            controller: _emailController,
            decoration: InputDecoration(
              hintText: 'Ваш email',
              hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.grey3,
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() == true) {}
                },
                icon: SvgPicture.asset(Assets.icons.share2),
              ),
              filled: true,
              fillColor: AppColors.white,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(color: AppColors.white),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(color: AppColors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(color: AppColors.blue),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(color: AppColors.red2),
              ),
            ),
          ),
        ),
        SizedBox(height: 18),
        Divider(color: AppColors.white3, height: 1),
        SizedBox(height: 17),
        Text(
          textAlign: TextAlign.start,
          '© 2003-2023 Интернет-магазин ООО «Стройоптторг» р/с 40702810360000102415 в Ставропольское отделение №5230 ПАО Сбербанк, БИК 040702615',
          style: context.bodySmall.copyWith(
            letterSpacing: 0,
            color: AppColors.grey,
            fontSize: 13,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Политика конфиденциальности',
          style: context.bodyMedium.copyWith(
            decoration: TextDecoration.underline,
            decorationColor: AppColors.grey2,
            color: AppColors.grey2,
          ),
        ),
        SizedBox(height: 10),
        Image.asset(
          Assets.images.readycodeLogo.path,
          width: 129,
          height: 22,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
