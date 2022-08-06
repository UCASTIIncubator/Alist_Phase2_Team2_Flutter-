import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_text_widget.dart';

enum ActionsButton { search, none }

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final ActionsButton? action;

  final bool? notification;

  CustomAppBar(
      {required this.title, required this.action, this.notification = true});

  @override
  Size get preferredSize => Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: CustomTextWidget(
        title: title,
        size: 16,
        fontWeight: FontWeight.w300,
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          size: 26,
          color: Colors.black,
        ),
        onPressed: () => Get.back(),
      ),
      actions: [
        action == ActionsButton.search
            ? IconButton(
                onPressed: () {},

                icon: Image.asset(
                  'assets/images/icon-search.png',
                  width: 20,
                ))
            : Container()
      ],
    );
  }
}
