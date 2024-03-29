import 'package:Alist_Phase2_Team2_Flutter/app/views/screen/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../bindings/root_binding .dart';
import 'custom_text_widget.dart';

class BuildHeaderProfile extends StatelessWidget {
  const BuildHeaderProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: double.infinity,
          height: 40.5.h,
          child:
          Image.asset('assets/images/user.png', fit: BoxFit.fill),
        ),
        Container(
          width: double.infinity,
          height: 40.5.h,
          color: Colors.black.withOpacity(.63),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  CustomTextWidget(
                      title: 'Profile'.tr,
                      size: 12.5.sp,
                      color: Colors.white),
                  GestureDetector(
                    onTap: () => Get.to(()=>EditProfileScreen(),binding: RootBinding()),
                    child: Image.asset('assets/images/icon-edit.png',
                        width: 15.5, height: 15.5, fit: BoxFit.contain),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              CircleAvatar(
                radius: 55,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/user.png'),
                ),
              ),
              SizedBox(height: 1.5.h),
              CustomTextWidget(
                  title: 'جون ماكدونالد',
                  size: 14.5.sp,
                  color: Colors.white),
              CustomTextWidget(
                  title: 'غزة ، شارع  الرمال',
                  size: 10.5.sp,
                  color: Colors.white),
            ],
          ),
        ),
      ],
    );
  }
}