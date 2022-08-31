import 'package:flutter/material.dart';

 final kMainColor = customColor('0F5DAB');
 final lineColor = customColor('9F9F9F');
 final textColor = customColor('717171');

Color customColor(String value){
  return Color(int.parse('0xff$value'));
}

class Helper{

 static String getDescription(String? desc) {
    if (desc == null || desc.isEmpty) return '';
    if (desc.length > 45)
      return desc.substring(0, 45) +'';
    else
      return desc;
  }

}
