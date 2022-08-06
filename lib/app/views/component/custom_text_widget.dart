import 'package:flutter/material.dart';

import 'auto_size_text_widget.dart';

// ignore: must_be_immutable
class CustomTextWidget extends StatelessWidget {
  final String? title;
  final Color? color;
  final double? size;
  final double? height;
  final int? maxLines;
  EdgeInsetsGeometry? padding;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final bool? shadow;

  CustomTextWidget(
      {this.title,
      this.color = Colors.black,
      this.size,
      this.height,
      this.maxLines,
      this.fontWeight,
      this.padding,
      this.shadow = false,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? null,
      child: AutoSizeText(
        title!,
        textAlign: textAlign ?? null,
        minFontSize: 10,
        maxLines: maxLines,
        style: TextStyle(
          color: color,
          height: height ?? null,
          fontWeight: fontWeight ?? FontWeight.w400,
          fontSize: size ?? 14,
          shadows: [
            if (shadow == true)
              Shadow(
                color: Colors.black,
                offset: Offset(0, 1),
                blurRadius: 6,
              ),
          ],
        ),
      ),
    );
  }
}
