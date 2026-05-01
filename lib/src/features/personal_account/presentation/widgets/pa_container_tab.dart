import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';

class PaContainerTab extends StatelessWidget {
  const PaContainerTab({super.key, required this.svg, required this.text, required this.onTap});

  final String svg;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 111,
        height: 110,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(color: AppColors.borderColor, width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(svg),
            Text(
              text,
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: AppColors.black3,
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
