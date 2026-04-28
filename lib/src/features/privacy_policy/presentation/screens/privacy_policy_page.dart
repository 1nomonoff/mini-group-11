import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/utils/text_style_extension.dart';
import 'package:mini_group_11/src/core/widgets/company_info_container.dart';
import 'package:mini_group_11/src/core/widgets/custom_app_bar_mobile.dart';
import 'package:mini_group_11/src/core/widgets/custom_header_mobile.dart';
import 'package:mini_group_11/src/features/privacy_policy/presentation/widgets/privacy_policy_text.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarMobile(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              CustomHeaderMobile(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        Text(
                          'Стройоптторг',
                          style: context.bodySmall.copyWith(
                            color: AppColors.darkgrey,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          '/',
                          style: context.bodySmall.copyWith(
                            color: AppColors.grey,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          'Электроинструмент',
                          style: context.bodySmall.copyWith(
                            color: AppColors.grey,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32),
                    Text(
                      'Электроинструмент',
                      style: GoogleFonts.roboto(
                        color: AppColors.darkgrey,
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: AppColors.white4,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Настоящая Политика конфиденциальности и обработки персональных данных (далее – Политика конфиденциальности) регулирует порядок обработки и использования персональных и иных данных, собранных Товариществом с ограниченной ответственностью «https://Stroiopttorg.ru,  (далее – Товарищество)  с помощью интернет-ресурса https://Stroiopttorg.ru (далее – Сайт), мобильного приложения https://Stroiopttorg.ru и связанных с ними услуг и инструментов на Сайте.  ',
                            style: context.bodyMedium.copyWith(
                              fontSize: 15,
                              color: AppColors.darkgrey,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Во всех указанных случаях Товарищество обрабатывает персональные данные пользователей исключительно в рамках требований Закона РФ от 21 мая 2013 года № 94-V «О персональных данных и их защите» (далее – Закон), а также международных договоров, ратифицированных Российской Федерации. ',
                            style: context.bodyMedium.copyWith(
                              fontSize: 15,
                              color: AppColors.darkgrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    PrivacyPolicyText(),
                  ],
                ),
              ),
              SizedBox(height: 80),
              CompanyInfoContainer(),
            ],
          ),
        ),
      ),
    );
  }
}

