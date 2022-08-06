import 'package:Alist_Phase2_Team2_Flutter/app/views/screen/notifications.dart';
import 'package:Alist_Phase2_Team2_Flutter/core/contracts/page.dart';

import '../../../core/contracts/screen.dart';

// ignore: must_be_immutable
class NotificationPage extends Page {
  NotificationPage({required String name, required Screen screen})
      : super(
      name: 'notifications',
      screen: NotificationScreen());
}
