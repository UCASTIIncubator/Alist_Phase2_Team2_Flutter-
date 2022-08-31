import 'package:Alist_Phase2_Team2_Flutter/app/views/component/profile.dart';
import 'package:Alist_Phase2_Team2_Flutter/core/contracts/screen.dart';
import 'package:flutter/material.dart';

import '../../controllers/profile.dart';

class ProfileScreen extends Screen<ProfileController> {
  @override
  // TODO: implement alwaysUseBuilder
  bool get alwaysUseBuilder => true;

  @override
  Widget? builder() {
    // TODO: implement builder
    return ProfileWidget();
  }
}
