import 'package:get/get.dart';

import '../controllers/notifications.dart';
import '../controllers/profile.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
    Get.lazyPut(() => NotificationsController());
  }
}
