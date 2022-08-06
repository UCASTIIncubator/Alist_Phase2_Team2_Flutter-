import 'package:Alist_Phase2_Team2_Flutter/app/views/component/circle_icon_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/notifications.dart';
import '../../utilities/const.dart';
import 'custom_app_bar.dart';
import 'custom_line_widget.dart';
import 'custom_text_widget.dart';

class NotificationWidget extends GetView<NotificationsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: "Notifications".tr,
        action: ActionsButton.search,
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index){
        return Container(
          padding: EdgeInsets.only(top: 8,bottom: 8),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleIconImageWidget(
                      colorIcon: customColor('AFBED3'),
                      width: 65,
                      height: 65,
                      widthImg: 23,
                      heightImg: 19,
                      circleColor: 'E6E6E6',
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child:   CustomTextWidget(
                        title:  Helper.getDescription("Lorem ipsum".tr),
                        size: 14,
                        color: textColor,
                      ),
                    ),
                    Icon(
                      Icons.more_vert,
                      color: textColor,
                    )
                  ],
                ),
              ),
             // SizedBox(height: 15),
              CustomLineWidget()
            ],
          ),
        );
      }),
    );
  }
}
