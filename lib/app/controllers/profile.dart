import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ProfileController extends GetxController {
  GlobalKey<FormState> editProfileFormKey = GlobalKey<FormState>();
  late TextEditingController nameController;
  late TextEditingController locationController;
  late TextEditingController dobController;
  late TextEditingController mobileController;

  RxString selectGender='trueMale'.obs;
  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    locationController = TextEditingController();
    dobController = TextEditingController();
    mobileController = TextEditingController();
  }

  @override
  void onClose() {
    nameController.dispose();
    locationController.dispose();
    dobController.dispose();
    mobileController.dispose();
    super.onClose();
  }

  Future<bool> profile() {
    // TODO: implement editProfile
    throw UnimplementedError();
  }

  changeGender(String select) {
    selectGender.value = select;
    update();
  }

}
