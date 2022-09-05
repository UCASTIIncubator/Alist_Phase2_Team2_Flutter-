import 'package:hexcolor/hexcolor.dart';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'localString.dart';
import 'screens/pointsScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primaryColor: HexColor('#0F5DAB'),
            primarySwatch: Colors.blue,
          ),
          locale: const Locale('en'),
          translations: LocaleString(),
          fallbackLocale: const Locale('ar'),
          home: PointsScreen(),
          initialRoute: '/',
          // getPages: Routes.routes
        );
      },
    );
  }
}
