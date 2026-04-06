import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Заказать в 1 клик',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Center(
                      child: Text(
                        'Дрель-шуруповерт аккумуляторная MAKITA DF 347DWE14 В 1,5 А/ч',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('Ваше имя *'),
                    SizedBox(height: 6),
                    TextField(
                      decoration: InputDecoration(
                        hintStyle: GoogleFonts.poppins(color: Colors.grey),
                        hintText: 'Как к вам обращаться?',
                        filled: true,
                        fillColor: AppColors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text('Email адрес *'),
                    SizedBox(height: 6),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Ваш email',
                        hintStyle: GoogleFonts.poppins(color: Colors.grey),
                        filled: true,
                        fillColor: AppColors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text('Номер телефона *'),
                    SizedBox(height: 6),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '+7 (   )  -   -',
                        hintStyle: GoogleFonts.poppins(color: Colors.grey),
                        filled: true,
                        fillColor: AppColors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Checkbox(
                          side: BorderSide(color: Colors.grey),
                          activeColor: AppColors.blue,
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        Expanded(
                          child: Text(
                            'Согласен с обработкой персональных данных '
                            'в соответствии с политикой конфиденциальности',
                            style: GoogleFonts.poppins(fontSize: 14,color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: isChecked ? () {} : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          disabledBackgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(vertical: 30),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          'КУПИТЬ',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}