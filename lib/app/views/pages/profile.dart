import 'package:Alist_Phase2_Team2_Flutter/app/views/screen/profile.dart';
import 'package:Alist_Phase2_Team2_Flutter/core/contracts/page.dart';
import 'package:Alist_Phase2_Team2_Flutter/core/contracts/screen.dart';

// ignore: must_be_immutable
class ProfilePage extends Page {
  ProfilePage({required String name, required Screen screen})
      : super(
      name: 'profile',
      screen: ProfileScreen());
}
