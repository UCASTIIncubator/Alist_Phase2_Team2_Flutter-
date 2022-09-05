import 'package:Alist_Phase2_Team2_Flutter/app/views/screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'app/bindings/root_binding .dart';
import 'app/service/local/local_storage.dart';
import 'app/service/local/app_locale.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveController().initHive();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        title: 'UCAS App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily:
                HiveController().languageCode == 'en' ? 'SFPro' : 'Hanimation'),
        translations: AppLocale(),
        initialBinding: RootBinding(),
        locale: Locale(HiveController().languageCode),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', 'US'),
          const Locale('ar', 'AR'),
        ],
        home: ProfileScreen(),
        // home:NotificationScreen(),
      ),
    );
  }
}
