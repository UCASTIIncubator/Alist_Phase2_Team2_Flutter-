import 'package:Alist_Phase2_Team2_Flutter/app/controllers/profile.dart';
import 'package:Alist_Phase2_Team2_Flutter/app/utilities/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      body: Form(
          key: controller.editProfileFormKey,
          child: Column(
            children: [
              CircleIconImageWidget(),
              SizedBox(height: 13),
              CustomTextField(
                textEditingController: controller.nameController,
                hintText: 'جون ماكدونالد',
              ),
              CustomTextField(
                textEditingController: controller.locationController,
                hintText: 'غزة ، شارع  الرمال',
                prefixIcon: 'assets/images/icon-location.png',
              ),
              CustomTextField(
                  textEditingController: controller.dobController,
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
                      size: 14,
                      color: textColor,
                    )),
                    Spacer(),
                    CustomButtonWidget(
                      title: 'Male'.tr,
                      height: 31,
                      width: 60,
                      colorText:controller.selectGender.value=='trueMale'?Colors.white:textColor,
                      margin: 0,
                      color:controller.selectGender.value=='trueMale'? kMainColor:Colors.white ,
                      onClick: ()=> controller.changeGender('trueMale'),
                    ),
                    SizedBox(width: 20),
                    CustomButtonWidget(
                      title: 'Female'.tr,
                      width: 60,
                      height: 31,
                      margin: 0,
                      colorText:controller.selectGender.value=='trueFemale'?Colors.white:textColor,
                      color:controller.selectGender.value=='trueFemale'?kMainColor:Colors.white,
                      fontSize: 12,
                      onClick: ()=> controller.changeGender('trueFemale'),
                    )
                  ],
                ),
              ),

              CustomTextField(
                  textEditingController: controller.mobileController,
                  hintText: '+972 597 315 555'),
              SizedBox(height: 50),
              CustomButtonWidget(
                title: 'Save'.tr,
                width: double.infinity,
                onClick: () {
                },
              )
            ],
          )),
    );
  }

}

