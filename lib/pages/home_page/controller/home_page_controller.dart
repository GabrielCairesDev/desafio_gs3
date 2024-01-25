import 'package:desafio_gs3/models/cartao_model.dart';
import 'package:flutter/material.dart';

class HomePageController extends ChangeNotifier {
  List<CartaoModel> cartoesCadastrados = [
    CartaoModel(numero: '1234 5678 9012 5621', nome: 'GS3 TEC', limite: 7867.80, melhorDia: 20),
    CartaoModel(numero: '1234 5678 9012 5621', nome: 'GS3 TEC', limite: 7867.80, melhorDia: 20),
  ];
}
