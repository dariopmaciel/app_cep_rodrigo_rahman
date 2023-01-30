import 'dart:developer';

import 'package:app_rodrigo_rahman/models/endereco_model.dart';
import 'package:app_rodrigo_rahman/repositories/cep_repository.dart';
import 'package:dio/dio.dart';

class CepRepositoryImpl implements CepRepository {
  @override
  Future<EnderecoModel> getCep(String cep) async {
    try {
      final result = await Dio().get("https://viacep.com.br/ws/$cep/json/");
      return EnderecoModel.fromMap(result.data);
    } on DioError catch (e) {
      log("Erro ao buscar CEP", error: e);
      throw Exception("Erro ao buscar CEP");
    }
  }
}
