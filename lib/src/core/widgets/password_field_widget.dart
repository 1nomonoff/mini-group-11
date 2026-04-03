import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/consts/gen/assets.gen.dart';

class PasswordFieldWidget extends StatefulWidget {
  const PasswordFieldWidget({super.key});

  @override
  State<PasswordFieldWidget> createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextField(cursorColor: Colors.grey,
      obscureText: isObscure,
      decoration: InputDecoration(
        hintText: "Введите пароль",
        hintStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderSide:  BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        suffixIcon:  IconButton(
  icon: isObscure
      ? SvgPicture.asset(Assets.icons.eye)
      : const Icon(Icons.visibility),
  onPressed: () {
    setState(() {
      isObscure = !isObscure;
    });
  },
),
      ),
    );
  }
}