import 'package:auto_size_text/auto_size_text.dart';
import 'package:easyflow/core/utils/validators_util.dart';
import 'package:easyflow/layers/widgets/text_field_secure_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_network/image_network.dart';
import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isMobile = constraints.biggest.width > 1000 ? false : true;
      return Scaffold(
        body: SafeArea(
          child: Center(
            child: ListView(
              scrollDirection: isMobile ? Axis.vertical : Axis.horizontal,
              shrinkWrap: true,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
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
                        const AutoSizeText(
                          'Flow',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 48),
                        ),
                        if (!isMobile) VerticalDivider(),
                        if (!isMobile)
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
                    if (isMobile)
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
                    if (!isMobile)
                      SizedBox(
                        height: 70,
                      ),
                    if (!isMobile)
                      ImageNetwork(
                        image:
                            'https://firebasestorage.googleapis.com/v0/b/easyflow-55ea5.appspot.com/o/teste%2FCollab-bro%201.png?alt=media&token=e9b3eee1-f72b-4c76-8e78-a215c16b1600',
                        imageCache: AssetImage(
                          'assets/images/collab_bro_image.png',
                        ),
                        fitWeb: BoxFitWeb.contain,
                        fitAndroidIos: BoxFit.contain,
                        width: 500,
                        height: 500,
                      ),
                  ],
                ),
                SizedBox(
                  width: constraints.biggest.width / 10,
                ),
                Center(
                  child: Form(
                    key: controller.formKey,
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 370),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (!isMobile)
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
                              child: Text(!isMobile ? 'Entrar' : 'Login'),
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
        ),
      );
    });
  }
}
