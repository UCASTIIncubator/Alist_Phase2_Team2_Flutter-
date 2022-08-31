import 'package:Alist_Phase2_Team2_Flutter/app/controllers/profile.dart';
import 'package:Alist_Phase2_Team2_Flutter/app/views/component/build_header_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'build_body_profile.dart';

class ProfileWidget extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BuildHeaderProfile(),
            SizedBox(height: 1.h),
            BuildBodyProfile(),
          ],
        ),
      ),
    );
  }
}
