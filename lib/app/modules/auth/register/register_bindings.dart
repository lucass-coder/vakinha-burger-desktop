import 'package:get/get.dart';
import 'package:vakinha_burger_desktop/app/modules/auth/register/register_controller.dart';
import 'package:vakinha_burger_desktop/app/modules/repositories/auth/auth_repository.dart';
import 'package:vakinha_burger_desktop/app/modules/repositories/auth/auth_repository_impl.dart';

class RegisterBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRepository>(
      () => AuthRepositoryImpl(restClient: Get.find()),
    );

    Get.lazyPut(
      () => RegisterController(authRepository: Get.find()),
    );
  }
}
