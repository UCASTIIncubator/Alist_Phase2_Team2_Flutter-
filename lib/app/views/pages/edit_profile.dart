import 'package:Alist_Phase2_Team2_Flutter/app/bindings/root_binding .dart';
import 'package:Alist_Phase2_Team2_Flutter/app/views/screen/edit_profile.dart';
import 'package:Alist_Phase2_Team2_Flutter/core/contracts/page.dart';
import 'package:Alist_Phase2_Team2_Flutter/core/contracts/screen.dart';

// ignore: must_be_immutable
class EditProfilePage extends Page {
  EditProfilePage({required String name, required Screen screen})
      : super(
            name: 'editProfile',
            screen: EditProfileScreen(),
            binding: RootBinding ());
}
