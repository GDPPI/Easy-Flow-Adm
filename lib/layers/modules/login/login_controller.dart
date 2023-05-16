import 'package:easyflow/core/routes/app_pages.dart';
import 'package:easyflow/layers/data/exceptions/api_exceptions.dart';
import 'package:easyflow/layers/data/model/auth_request_model.dart';
import 'package:easyflow/layers/data/service/user_service.dart';
import 'package:easyflow/layers/data/repository/auth_repository.dart';
import 'package:easyflow/layers/widgets/dialogs_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController {
  final AuthRepository _authRepository;
  LoginController(this._authRepository);

  final formKey = GlobalKey<FormState>();

  final loginTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  login(context) async {
    if (formKey.currentState!.validate()) {
      Dialogs.loading(context);
      try {
        await _authRepository
            .login(AuthRequestModel(
                login: loginTextController.text,
                password: passwordTextController.text))
            .then((user) {
          if (user.person.admin == true) {
            Get.put(UserService()).auth(user);
            Navigator.of(context).pushReplacementNamed(Routes.HOME);
          } else {
            Navigator.of(context).pop();
            Dialogs.error(context,
                title: 'Permissão negada.',
                message:
                    'Esta função requer acesso de administrador para ser utilizada.\n Por favor, entre em contato com o administrador do sistema para obter permissão.');
          }
        });
      } on ApiException catch (e) {
        Navigator.of(context).pop();
        Dialogs.error(context, title: e.title, message: e.message);
      }
    }
  }
}
