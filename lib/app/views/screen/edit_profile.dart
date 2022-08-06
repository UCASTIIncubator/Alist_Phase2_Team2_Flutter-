import 'package:Alist_Phase2_Team2_Flutter/app/views/component/edit_profile.dart';
import 'package:Alist_Phase2_Team2_Flutter/base/controllers/profile.dart';
import 'package:Alist_Phase2_Team2_Flutter/core/contracts/screen.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends Screen<BaseProfileController> {
  @override
  // TODO: implement alwaysUseBuilder
  bool get alwaysUseBuilder => true;

  @override
  Widget? builder() {
    // TODO: implement builder
    return EditProfileForm();
  }
}
