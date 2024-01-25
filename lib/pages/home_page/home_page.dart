import 'package:desafio_gs3/pages/home_page/controller/home_page_controller.dart';
import 'package:desafio_gs3/pages/home_page/widgets/boas_vindas.dart';
import 'package:desafio_gs3/pages/home_page/widgets/divisor_pagina.dart';
import 'package:desafio_gs3/pages/home_page/widgets/lista_cartoes.dart';
import 'package:desafio_gs3/pages/home_page/widgets/lista_favoritos.dart';
import 'package:desafio_gs3/pages/home_page/widgets/lista_ultimos_lancamentos.dart';
import 'package:desafio_gs3/pages/home_page/widgets/mensagem_notificacao.dart';
import 'package:desafio_gs3/pages/home_page/widgets/menu_favorito_cabecalho%20copy.dart';
import 'package:desafio_gs3/pages/home_page/widgets/menu_icone.dart';
import 'package:desafio_gs3/pages/home_page/widgets/menu_roda_pe.dart';
import 'package:desafio_gs3/pages/home_page/widgets/ultimos_lancamentos_cabecalho.dart';
import 'package:desafio_gs3/theme/background.dart';
import 'package:desafio_gs3/utils/colors_app.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomePageController controlador = HomePageController();

  @override
  void initState() {
    controlador.transformarListaEmMapa();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGround(
        child: Padding(
          padding: const EdgeInsets.only(top: 54),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HomePageMenuIcon(),
                      BoasVindas(),
                      MensagemNotificacao(),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                const DivisorPagina(color: ColorsApp.cor_02),
                const SizedBox(height: 16),
                AnimatedBuilder(
                  animation: controlador,
                  builder: (context, _) {
                    return ListaCartoes(cartoesCadastrados: controlador.cartoesCadastrados, cartaoVisivel: controlador.cartaoVisivel, mudarCartaoVisivel: controlador.mudarCartaoVisivel);
                  },
                ),
                const SizedBox(height: 16),
                const DivisorPagina(color: ColorsApp.cor_02),
                const SizedBox(height: 22),
                const MeusFavoritosCabecalho(),
                const SizedBox(height: 16),
                ListaFavoritos(paginasFavoritas: controlador.paginasFavoritas),
                const SizedBox(height: 20),
                const DivisorPagina(color: ColorsApp.cor_02),
                const SizedBox(height: 20),
                const UltimosLancamentosCabecalho(),
                const SizedBox(height: 10),
                ListaUltimosLancamentos(mapaUltimosLancamentos: controlador.mapaUltimosLancamentos),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: AnimatedBuilder(
        animation: controlador,
        builder: (context, _) {
          return MenuRodaPe(
            index: controlador.paginaIndex,
            menusTrocar: controlador.menuTrocar,
          );
        },
      ),
    );
  }
}
