
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Alist_Phase2_Team2_Flutter/base/service/local/local_storage.dart';

import '../../../app/service/lang/en.dart';
import '../../../app/service/lang/ar.dart';


class AppLocale extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en': en,
    'ar': ar
  };

  static void changeLang() {
    String newLanguageCode = HiveController().languageCode == 'en' ? 'ar' : 'en';
    Get.updateLocale(Locale(newLanguageCode));
    HiveController().setLanguage(newLanguageCode);
  }
}