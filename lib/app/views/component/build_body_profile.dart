import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_row_profile.dart';

class BuildBodyProfile extends StatelessWidget {
  const BuildBodyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomRowProfile(
          title: "Mobile Number".tr,
          value: '+972 597 315 555',
        ),

        CustomRowProfile(
          title: "Email".tr,
          value: 'Husam@host.com',
        ),
        CustomRowProfile(
          title: "Gender".tr,
          value: "Male".tr,
        ),
        CustomRowProfile(
          title: "DOB".tr,
          value: '15/12/1999',
        ),
        CustomRowProfile(
          title: "Orders".tr,
        value: '' ),
        CustomRowProfile(
          title: "Points".tr,
            value: ''),
        CustomRowProfile(
          title: "Change Password".tr,
            value: ''
        ),
        CustomRowProfile(
          title: "Logout".tr,
            value: '',
        line: false,),
      ],
    );
  }
}
