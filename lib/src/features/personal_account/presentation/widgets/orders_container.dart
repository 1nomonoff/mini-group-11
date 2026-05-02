import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';

class OrdersContainer extends StatelessWidget {
  const OrdersContainer({super.key, required this.color, required this.text});

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 214,
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: AppColors.borderColor, width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'НОМЕР',
                style: GoogleFonts.roboto(
                  color: AppColors.black4,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              Text(
                '#2365341-11',
                style: GoogleFonts.roboto(
                  color: AppColors.black3,
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'ДАТА',
                style: GoogleFonts.roboto(
                  color: AppColors.black4,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              Text(
                '16 Августа 2023',
                style: GoogleFonts.roboto(
                  color: AppColors.black4,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'СТАТУС',
                style: GoogleFonts.roboto(
                  color: AppColors.black4,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              Container(
                width: 106,
                height: 32,
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: color, width: 1),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 2.5,
                      backgroundColor: color,
                    ),
                    SizedBox(width: 9),
                    Text(
                      text,
                      style: GoogleFonts.roboto(
                        color: color,
                        fontWeight: FontWeight.w600,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'ИТОГ',
                style: GoogleFonts.roboto(
                  color: AppColors.black4,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              Text(
                '36 829 ₽',
                style: GoogleFonts.roboto(
                  color: AppColors.blue1,
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: Size(double.maxFinite, 42),
              backgroundColor: AppColors.white2,
              foregroundColor: AppColors.blue5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(8.0),
              ),
            ),
            child: Text(
              'Просмотр заказа',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
