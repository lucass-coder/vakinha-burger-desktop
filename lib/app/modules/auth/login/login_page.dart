// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vakinha_burger_desktop/app/core/ui/vakinha_state.dart';
import 'package:vakinha_burger_desktop/app/core/ui/vakinha_ui.dart';
import 'package:vakinha_burger_desktop/app/core/ui/widgets/vakinha_appbar.dart';
import 'package:vakinha_burger_desktop/app/core/ui/widgets/vakinha_button.dart';
import 'package:vakinha_burger_desktop/app/core/ui/widgets/vakinha_textforfield.dart';
import 'package:vakinha_burger_desktop/app/modules/auth/login/login_controller.dart';
import 'package:validatorless/validatorless.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends VakinhaState<LoginPage, LoginController> {
  final _formKey = GlobalKey<FormState>();
  final _emailEC = TextEditingController();
  final _passwordEC = TextEditingController();

  @override
  void dispose() {
    _emailEC.dispose();
    _passwordEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: VakinhaAppbar(
          elevation: 0,
        ),
        backgroundColor: Colors.blueAccent,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/about.jpg',
              ),
            ),
          ),
          child: Center(
            child: Container(
              alignment: Alignment.centerRight,
              height: 400,
              width: 400,
              child: Card(
                elevation: 8,
                shadowColor: Colors.green,
                margin: EdgeInsets.all(20),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green, width: 1)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              'Login',
                              style: context.textTheme.headline6?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: context.theme.primaryColorDark),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            VakinhaTextforfield(
                              label: 'E-mail',
                              controller: _emailEC,
                              validator: Validatorless.multiple([
                                Validatorless.required('E-mail obrigatório!'),
                                Validatorless.email('E-mail inválido!'),
                              ]),
                            ),

                            const SizedBox(
                              height: 30,
                            ),
                            VakinhaTextforfield(
                              label: 'Senha',
                              obscureText: true,
                              controller: _passwordEC,
                              validator: Validatorless.multiple([
                                Validatorless.required('Senha obrigatória!'),
                                Validatorless.min(6,
                                    'A senha deve conter pelo menos 6 caracteres!'),
                              ]),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Center(
                              child: VakinhaButton(
                                width: double.infinity,
                                label: 'Entrar',
                                onPressed: () {
                                  final formValid =
                                      _formKey.currentState?.validate() ??
                                          false;
                                  if (formValid) {
                                    controller.login(
                                      email: _emailEC.text,
                                      password: _passwordEC.text,
                                    );
                                  }
                                  //Get.toNamed('/homePage');
                                },
                              ),
                            ),
                            // Empurra os próximos itens para baixo

                            Row(
                              children: [
                                const Text('Não possui uma conta?'),
                                TextButton(
                                  onPressed: () {
                                    Get.toNamed('/auth/register');
                                  },
                                  child: const Text(
                                    'Cadastre-se',
                                    style: VakinhaUi.textBold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
