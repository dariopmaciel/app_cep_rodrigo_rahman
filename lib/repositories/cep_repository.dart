import 'dart:developer';

import 'package:app_rodrigo_rahman/models/endereco_model.dart';
import 'package:dio/dio.dart';

abstract class CepRepository {
  Future<EnderecoModel> getCep(String cep);
    
}
