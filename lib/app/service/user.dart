import 'package:Alist_Phase2_Team2_Flutter/base/models/User.dart';
import 'package:Alist_Phase2_Team2_Flutter/base/service/user.dart';

  class  UserService extends BaseUserService<BaseUser>{
  @override
  Future<BaseUser?> create({required Map<String, dynamic> data}) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<bool> delete({required String id}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List?> findAll({Map<String, dynamic>? filters, int? page}) {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future findOne({required String id}) {
    // TODO: implement findOne
    throw UnimplementedError();
  }

  @override
  Future update({required coreModel}) {
    // TODO: implement update
    throw UnimplementedError();
  }
}