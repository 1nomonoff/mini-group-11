import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});
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
              SizedBox(height: 32),
              Row(
                children: [
                  Text(
                    'Стройоптторг',
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                  Text(' / ', style: TextStyle(color: Colors.grey)),
                  Text(
                    'Авторизация',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  textAlign: TextAlign.start,
                  'Электроинструмент',
                  style: GoogleFonts.poppins(fontSize: 30),
                ),
              ),
              SizedBox(height: 32),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]!),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(
                      'Настоящая Политика конфиденциальности и обработки персональных данных (далее – Политика конфиденциальности) регулирует порядок обработки и использования персональных и иных данных, собранных Товариществом с ограниченной ответственностью «https://Stroiopttorg.ru,  (далее – Товарищество)  с помощью интернет-ресурса https://Stroiopttorg.ru (далее – Сайт), мобильного приложения https://Stroiopttorg.ru и связанных с ними услуг и инструментов на Сайте. ',style: GoogleFonts.poppins(),
                    ),
                    Text(
                      'Во всех указанных случаях Товарищество обрабатывает персональные данные пользователей исключительно в рамках требований Закона РФ от 21 мая 2013 года № 94-V «О персональных данных и их защите» (далее – Закон), а также международных договоров, ратифицированных Российской Федерации.',style: GoogleFonts.poppins(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
