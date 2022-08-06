import 'package:Alist_Phase2_Team2_Flutter/app/utilities/const.dart';
import 'package:flutter/material.dart';

import '../../../base/service/local/local_storage.dart';

class CustomLineWidget extends StatelessWidget {
  const CustomLineWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lineColor,
      width: double.infinity,
      margin: HiveController().languageCode == 'en'
          ? EdgeInsets.only(left: 15)
          : EdgeInsets.only(right: 15),
      height: .5,
    );
  }
}
