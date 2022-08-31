import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utilities/const.dart';
import 'package:sizer/sizer.dart';
// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  TextEditingController? textEditingController;
  String? hintText;
  String? prefixIcon;
  TextInputType? keyboardType;
  TextInputAction? inputAction;
  bool? filled;
  bool? enabled;
  Color? prefixColor;
  bool border;
  String? suffixIcon;
  Color? fillColor;
  double borderRadius;

  CustomTextField({
    this.textEditingController,
    this.hintText,
    this.prefixIcon,
    this.keyboardType,
    this.inputAction,
    this.suffixIcon,
    this.prefixColor,
    this.border = true,
    this.enabled = true,
    this.filled = false,
    this.borderRadius = 4,
    this.fillColor = const Color(0xffF5F5F5),
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
      decoration: BoxDecoration(
        border: widget.border ? Border.all(color: Color(0xffC1C1C1)) : null,
        borderRadius: BorderRadius.circular(widget.borderRadius),
      ),
      child: new TextFormField(
        enabled: widget.enabled,
        cursorColor: kMainColor,
        inputFormatters: [
          if (widget.keyboardType == TextInputType.phone)
            LengthLimitingTextInputFormatter(10)
        ],
        controller: widget.textEditingController,
        textInputAction: widget.inputAction,
        decoration: new InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            hintText: widget.hintText,
            suffixIcon: widget.prefixIcon == null
                ? null
                : Container(
                    width: 20,
                    alignment: Alignment.center,
                    child: ImageIcon(
                      AssetImage(widget.prefixIcon!),
                      color: kMainColor,
                      size: 20,
                    ),
                  ),
            hintStyle:   TextStyle(fontSize: 10.5.sp),
            hoverColor: kMainColor,
            focusColor: kMainColor,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            filled: widget.filled,
            fillColor: widget.fillColor),
        showCursor: true,
        keyboardType: widget.keyboardType,
      ),
    );
  }
}
