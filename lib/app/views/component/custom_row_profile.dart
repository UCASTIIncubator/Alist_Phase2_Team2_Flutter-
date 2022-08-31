import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/const.dart';
import 'custom_line_widget.dart';
import 'custom_text_widget.dart';

// ignore: must_be_immutable
class CustomRowProfile extends StatelessWidget {
  String? title;
  String? value;
  bool line;

  CustomRowProfile({Key? key, this.title, this.value, this.line = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Container(
                width: 3.2.w,
                height: 3.2.h,
                decoration: BoxDecoration(color: kMainColor, shape: BoxShape.circle),
              ),
              SizedBox(width: 8),
              CustomTextWidget(title: title, size: 10.5.sp),
              Spacer(),
              CustomTextWidget(title: value, size: 8.5.sp),
            ],
          ),
        ),
        if (line == true) CustomLineWidget()
      ],
    );
  }
}
