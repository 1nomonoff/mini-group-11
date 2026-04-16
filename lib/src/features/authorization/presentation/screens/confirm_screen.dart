import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';

class ConfirmScreen extends StatelessWidget {
 const ConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/logo.png', width: 159, height: 40),

                  SvgPicture.asset('assets/icons/profile.svg'),
                  SvgPicture.asset('assets/icons/trading.svg'),
                  SvgPicture.asset('assets/icons/like.svg'),
                  SvgPicture.asset('assets/icons/cart1.svg'),
                ],
              ),             
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  textAlign: TextAlign.start,
                  'Восстановление\nпароля',
                  style: GoogleFonts.poppins(fontSize: 30),
                ),
              ),
              SizedBox(height: 32),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[300]!),
                borderRadius: BorderRadius.circular(8),
              ),
                child: Column(
                children: [
                  Center(child: SvgPicture.asset('assets/icons/attention.svg')),
                  SizedBox(height: 15),
                  Text(textAlign: TextAlign.center,'Ссылка для сброса пароля и дальнейших инструкций отправлена вам на почту. Перейдите по ссылке и следуйте дальнейшим инструкциям.',style: GoogleFonts.poppins(color: AppColors.darkGrey2),),
                ],
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
