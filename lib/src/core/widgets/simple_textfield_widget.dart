import 'package:flutter/material.dart';

class SimpleTextfieldWidget extends StatelessWidget {
  final String title;
  const SimpleTextfieldWidget({super.key,required this.title});
  
  @override
  Widget build(BuildContext context) {
   return TextField(cursorColor: Colors.grey,
    
      decoration: InputDecoration(
        hintText: title,
        hintStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderSide:  BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(8)),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide(color: Colors.grey,)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
      
      ),);
  }
  
}