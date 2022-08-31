import 'package:Alist_Phase2_Team2_Flutter/core/contracts/screen.dart';
import 'package:flutter/material.dart';

import '../../controllers/notifications.dart';
import '../component/notifications.dart';

class NotificationScreen extends Screen<NotificationsController> {
  @override
  // TODO: implement alwaysUseBuilder
  bool get alwaysUseBuilder => true;

  @override
  Widget? builder() {
    // TODO: implement builder
    return NotificationWidget();
  }
}
