import 'package:get/get.dart';
import 'package:vakinha_burger_desktop/app/modules/auth/login/login_bindings.dart';
import 'package:vakinha_burger_desktop/app/modules/auth/login/login_page.dart';
import 'package:vakinha_burger_desktop/app/modules/auth/register/register_bindings.dart';
import 'package:vakinha_burger_desktop/app/modules/auth/register/register_page.dart';
import 'package:vakinha_burger_desktop/app/modules/home/home_bindings.dart';
import 'package:vakinha_burger_desktop/app/modules/home/home_page.dart';

class AuthRouters {
  AuthRouters._();

  static final routers = <GetPage>[
    GetPage(
        name: '/auth/login',
        page: () => const LoginPage(),
        binding: LoginBindings()),
    GetPage(
      name: '/auth/register',
      page: () => const RegisterPage(),
      binding: RegisterBindings(),
    ),
    GetPage(
      name: '/homePage',
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
  ];
}
