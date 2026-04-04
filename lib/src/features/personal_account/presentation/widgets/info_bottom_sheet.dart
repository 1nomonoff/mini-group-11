import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';

Widget _buildItem(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6),
    child: GestureDetector(
      onTap: () {
        // навигация
      },
      child: Text(
        title,
        style: GoogleFonts.roboto(
          fontSize: 14,
          color: AppColors.darkgrey,
        ),
      ),
    ),
  );
}