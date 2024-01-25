import 'package:desafio_gs3/models/cartao_model.dart';
import 'package:desafio_gs3/models/paginas_favoritas.dart';
import 'package:flutter/material.dart';

class HomePageController extends ChangeNotifier {
  List<CartaoModel> cartoesCadastrados = [
    CartaoModel(numero: '1234 5678 9012 5621', nome: 'GS3 TEC', limite: 7867.80, melhorDia: 20),
    CartaoModel(numero: '5678 1234 5621 9012', nome: 'GS3 TEC 2', limite: 8888.99, melhorDia: 17),
  ];

  List<PaginasFavoritas> paginasFavoritas = [
    PaginasFavoritas(paginaFavorita: 1),
    PaginasFavoritas(paginaFavorita: 2),
    PaginasFavoritas(paginaFavorita: 3),
    PaginasFavoritas(paginaFavorita: 4),
  ];

  bool cartaoVisivel = false;

  mudarCartaoVisivel() {
    cartaoVisivel = !cartaoVisivel;
    notifyListeners();
  }
}
