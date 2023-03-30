import 'package:easyflow/core/routes/app_pages.dart';
import 'package:easyflow/core/utils/validators_util.dart';
import 'package:easyflow/layers/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, Constraints constraints) => SafeArea(
          child: Row(
            children: [
              Expanded(
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
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 48),
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
              Expanded(
                child: SizedBox(
                  width: 370,
                  child: Form(
                    key: controller.formKey,
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
                        TextFieldWidget(
                          label: 'E-mail',
                          hintText: 'e-mail',
                          prefixIcon: const Icon(Icons.email_outlined),
                          controller: controller.loginTextController,
                          validator: (value) => Validators.isNotEmpty(value),
                          textInputAction: TextInputAction.next,
                        ),
                        TextFieldWidget(
                          label: 'Senha',
                          hintText: "senha",
                          prefixIcon: const Icon(Icons.lock_outlined),
                          controller: controller.passwordTextController,
                          security: true,
                          validator: (value) => Validators.isNotEmpty(value),
                          textInputAction: TextInputAction.next,
                        ),
                        Container(
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(vertical: 30),
                          child: ElevatedButton(
                            onPressed: () => controller.login(context),
                            child: const Text('Entrar'),
                          ),
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Divider(),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                'ou',
                                style: TextStyle(color: Color(0xFF8B8B8B)),
                              ),
                            ),
                            Expanded(
                              child: Divider(),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Não tem uma conta? '),
                            TextButton(
                                onPressed: () => Navigator.of(context)
                                    .pushNamed(Routes.HOME),
                                child: const Text('Criar conta'))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
