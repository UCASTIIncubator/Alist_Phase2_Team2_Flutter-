import 'package:Alist_Phase2_Team2_Flutter/app/views/component/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:sizer/sizer.dart';

class ChangePaasswordScreen extends StatelessWidget {
  ChangePaasswordScreen({Key? key}) : super(key: key);
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController newPasswordAgainController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'password'.tr,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0.h),
                child: Text(
                  'content'.tr,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0.h),
                child: CustomTextField(
                    textEditingController: newPasswordController,
                    hintText: 'New_password'.tr),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0.h),
                child: CustomTextField(
                    textEditingController: newPasswordAgainController,
                    hintText: 'New_password_Again'.tr),
              ),
              SizedBox(
                height: 300.h,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Reset_password'.tr),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).primaryColor),
                    fixedSize: MaterialStateProperty.all(
                        Size(MediaQuery.of(context).size.width, 50.h))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
