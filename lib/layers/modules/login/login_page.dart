import 'package:easyflow/core/routes/app_pages.dart';
import 'package:easyflow/core/utils/validators_util.dart';
import 'package:easyflow/layers/widgets/text_field_secure_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Easy ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 48,
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.w700),
                        ),
                        const Text(
                          'Flow',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 48),
                        ),
                        VerticalDivider(),
                        Text(
                          'O mais rápido e pratico\n gerenciador de laboratório',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF5A5A5F),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    height: 400,
                    child: Image.asset(
                      'assets/images/collab_bro_image.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Form(
                key: controller.formKey,
                child: Container(
                  constraints: BoxConstraints(maxWidth: 370),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                            fontFamily: 'Segoe_UI',
                            fontSize: 32,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 64,
                      ),
                      TextFormField(
                        decoration: InputDecoration(label: Text('E-mail')),
                        controller: controller.loginTextController,
                        validator: (value) => Validators.isNotEmpty(value),
                        textInputAction: TextInputAction.next,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFieldSecureWidget(
                        label: 'Senha',
                        controller: controller.passwordTextController,
                        security: true,
                        validator: (value) => Validators.isNotEmpty(value),
                        textInputAction: TextInputAction.next,
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => controller.login(context),
                          child: const Text('Entrar'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
