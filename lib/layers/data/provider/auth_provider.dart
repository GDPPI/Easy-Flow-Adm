import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:easyflow/core/config/http_headers_config.dart';
import 'package:easyflow/layers/data/exceptions/api_exceptions.dart';
import 'package:easyflow/layers/data/model/auth_request_model.dart';
import 'package:easyflow/layers/data/model/user_model.dart';
import 'package:easyflow/core/config/api_config.dart';
import 'package:http/http.dart' as http;

class AuthProvider {
  Future<UserModel> login(AuthRequestModel authRequestModel) async {
    try {
      final response = await http
          .post(
            Uri.parse(ApiConfig.getUrl(ApiConfig.urlEndPointAuth)),
            body: jsonEncode(
              authRequestModel.toMap(),
            ),
            headers: HttpHeadersConfig.buildHeadersWithoutAuth(),
          )
          .timeout(
            const Duration(seconds: 10),
          );
      print(response.body);
      if (response.statusCode == 200) {
        return UserModel.fromMap(
          jsonDecode(
            response.body,
          ),
        );
      } else if (response.statusCode == 401) {
        throw ApiException(
            'Credenciais Invalidas', 'Verifique suas Credenciais');
      } else {
        throw ApiException('Erro ao Realizar Operação', 'Tente novamente');
      }
    } on TimeoutException catch (_) {
      throw ApiException('Erro ao Realizar Operação',
          'Servidor indisponível, Tente novamente');
    } on SocketException catch (_) {
      throw ApiException('Sem conexão com a internet', 'Conecte à internet');
    } on Exception catch (_) {
      if (_ is ApiException) {
        rethrow;
      }
      throw ApiException('Erro desconhecido', 'Contacte o administrador.');
    }
  }
}
