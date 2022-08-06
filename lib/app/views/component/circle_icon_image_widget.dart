import 'package:flutter/material.dart';

import '../../utilities/const.dart';

// ignore: must_be_immutable
class CircleIconImageWidget extends StatelessWidget {
  Color  colorIcon;
  double? width;
  double? height;
  double? widthImg;
  double? heightImg;
  String ?circleColor;
    CircleIconImageWidget({
    Key? key,
      this.colorIcon =Colors.white,
      this.width ,
      this.height,
      this.widthImg ,
      this.heightImg,
      this.circleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Image.asset(
        'assets/images/icon-photo.png',
        fit: BoxFit.contain,
        width:widthImg?? 40,
        height:heightImg?? 30,
        color: colorIcon ,
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          fixedSize:   Size(width??100, height??100),
          elevation: 0,
          shape: const CircleBorder(),
          primary: customColor(circleColor??'CCCCCC')),
    );
  }
}
