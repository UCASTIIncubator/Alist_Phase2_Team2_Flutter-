import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController controller;
  String hintText;
   CustomTextField(this.controller,this.hintText,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType:TextInputType.visiblePassword ,
      controller: controller,
      decoration: InputDecoration(
          fillColor: Colors.grey.shade300,
          filled: true,
          hintText: hintText.toUpperCase()),
    );
  }
}
