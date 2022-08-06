import 'package:get/get.dart';

abstract class Service<CoreModel> extends GetxService {
  Future<CoreModel?> create({required Map<String, dynamic> data});

  Future<CoreModel?> update({required CoreModel coreModel});

  Future<bool> delete({required String id});

  Future<List<CoreModel>?> findAll({Map<String, dynamic> filters, int page});

  Future<CoreModel?> findOne({required String id});
}
