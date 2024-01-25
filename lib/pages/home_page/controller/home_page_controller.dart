import 'package:desafio_gs3/models/cartao_model.dart';
import 'package:desafio_gs3/models/paginas_favoritas_model.dart';
import 'package:desafio_gs3/models/ultimos_lancamentos_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePageController extends ChangeNotifier {
  int paginaIndex = 0;

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

  List<UltimosLancamentoModel> ultimosLancamentos = [
    UltimosLancamentoModel(
      tipo: 1,
      nome: 'Apple',
      data: DateTime.parse('2023-09-05 22:35:00'),
      valor: 545.99,
      parcelas: 12,
      alerta: false,
    ),
    UltimosLancamentoModel(
      tipo: 2,
      nome: 'Uber*Uber*Trip',
      data: DateTime.parse('2023-09-05 15:25:00'),
      valor: 12.96,
      parcelas: 0,
      alerta: true,
    ),
    UltimosLancamentoModel(
      tipo: 3,
      nome: 'Carrefour',
      data: DateTime.parse('2023-09-03 09:34:00'),
      valor: 545.99,
      parcelas: 3,
      alerta: false,
    ),
  ];

  bool cartaoVisivel = false;

  mudarCartaoVisivel() {
    cartaoVisivel = !cartaoVisivel;
    notifyListeners();
  }

  Map<String, List<UltimosLancamentoModel>> mapaUltimosLancamentos = {};

  transformarListaEmMapa() {
    DateFormat formatoDia = DateFormat('yyyy-MM-dd');

    for (UltimosLancamentoModel lancamento in ultimosLancamentos) {
      String dia = formatoDia.format(lancamento.data);

      if (!mapaUltimosLancamentos.containsKey(dia)) {
        mapaUltimosLancamentos[dia] = [];
      }

      mapaUltimosLancamentos[dia]!.add(lancamento);
    }
    return mapaUltimosLancamentos;
  }

  menuTrocar(int int) {
    paginaIndex = int;
    notifyListeners();
  }
}
