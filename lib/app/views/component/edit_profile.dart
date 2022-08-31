import 'package:Alist_Phase2_Team2_Flutter/app/controllers/profile.dart';
import 'package:Alist_Phase2_Team2_Flutter/app/utilities/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'circle_icon_image_widget.dart';
import 'custom_app_bar.dart';
import 'custom_button_widget.dart';
import 'custom_text_filed.dart';
import 'custom_text_widget.dart';

class EditProfileForm extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: "Edit Profile".tr,
        action: ActionsButton.none,
      ),
      body: GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: (logic)=> Form(
          key: logic.editProfileFormKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CircleIconImageWidget(),
                SizedBox(height: 4.h),
                CustomTextField(
                  textEditingController: logic.nameController,
                  hintText: 'جون ماكدونالد',
                  keyboardType: TextInputType.name,
                ),
                CustomTextField(
                  textEditingController: logic.locationController,
                  hintText: 'غزة ، شارع  الرمال',
                  keyboardType: TextInputType.streetAddress,
                  prefixIcon: 'assets/images/icon-location.png',
                ),
                CustomTextField(
                    textEditingController: logic.dobController,
                    hintText: '15/12/1999'),
                Padding(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: CustomTextWidget(
                        title: 'Gender'.tr,
                        size: 10.5.sp,
                        color: textColor,
                      )),
                      Spacer(),
                      CustomButtonWidget(
                        title: 'Male'.tr,
                        height: 5.h,
                        width: 22.w,
                        colorText: logic.selectGender.value == 'trueMale'
                            ? Colors.white
                            : textColor,
                        margin: 0,
                        fontSize: 8.0.sp,
                        color: logic.selectGender.value == 'trueMale'
                            ? kMainColor
                            : Colors.white,
                        onClick: () => logic.changeGender('trueMale'),
                      ),
                      SizedBox(width: 20),
                      CustomButtonWidget(
                        title: 'Female'.tr,
                        width: 20.w,
                        height: 5.h,
                        margin: 0,
                        colorText: logic.selectGender.value == 'trueFemale'
                            ? Colors.white
                            : textColor,
                        color: logic.selectGender.value == 'trueFemale'
                            ? kMainColor
                            : Colors.white,
                        fontSize: 8.0.sp,
                        onClick: () => logic.changeGender('trueFemale'),
                      )
                    ],
                  ),
                ),
                CustomTextField(
                    textEditingController: logic.mobileController,
                    keyboardType: TextInputType.phone,
                    hintText: '+972 597 315 555'),
                SizedBox(height: 7.h),
                CustomButtonWidget(
                  title: 'Save'.tr,
                  width: double.infinity,
                  fontSize: 12.5.sp,
                  onClick: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}

