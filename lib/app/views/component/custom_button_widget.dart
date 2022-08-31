import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/const.dart';
import 'custom_text_widget.dart';

class CustomButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onClick;
  final bool? loading;
  final Color? color;
  final double padding;
  final double margin;
  final double height;
  final double? width;
  final Color? colorText;
  final double? fontSize;
  final double borderRadius;

  CustomButtonWidget({required this.title,required this.onClick,
    this.loading, this.color,this.padding = 20,this.margin = 20,this.height = 50,this.colorText = Colors.white,
    this.fontSize , this.borderRadius =4,this.width});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        height: height,
        width: width ?? null,
        margin: EdgeInsets.all(margin),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: padding),
            
            primary: color ?? kMainColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
          ),
          onPressed:loading != null && loading == true ? (){} : onClick,
          child: loading != null && loading == true
              ? CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.white))
              :  CustomTextWidget(
            title: title,
            color: colorText,
            size: fontSize??12.0.sp,
          ),
        ),
      ),
    );
  }
}
