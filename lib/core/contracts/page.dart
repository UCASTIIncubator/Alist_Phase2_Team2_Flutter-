import 'package:Alist_Phase2_Team2_Flutter/core/contracts/screen.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
abstract class Page extends GetPage {
  late String name;
  late Screen screen;
  late Bindings? binding;
  late List<GetMiddleware>? middleware;

  Page(
      {required String name,
      required Screen screen,
      Bindings? binding,
      List<GetMiddleware>? middleware})
      : super(
            name: name,
            page: () => screen,
            binding: binding,
            middlewares: middleware);
}
