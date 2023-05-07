import 'package:get/get.dart';
import 'package:lunch_vote/controller/login_controller.dart';
import 'package:lunch_vote/repository/login_repository.dart';

import '../source/user_remote_data_source.dart';
import '../utils/shared_pref_manager.dart';

class LoginBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(LoginController(
      repository: LoginRepository(UserRemoteDataSource.instance),
    ));
    Get.lazyPut(() => SharedPrefManager());
  }
}