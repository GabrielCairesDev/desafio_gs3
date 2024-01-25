import 'package:desafio_gs3/pages/home_page/controller/home_page_controller.dart';
import 'package:desafio_gs3/pages/home_page/widgets/boas_vindas.dart';
import 'package:desafio_gs3/pages/home_page/widgets/lista_cartoes.dart';
import 'package:desafio_gs3/pages/home_page/widgets/mensagem_notificacao.dart';
import 'package:desafio_gs3/pages/home_page/widgets/menu_icone.dart';
import 'package:desafio_gs3/theme/background.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HomePageController controlador = HomePageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGround(
        child: Padding(
          padding: const EdgeInsets.only(top: 54),
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
              const Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Divider(color: Color.fromRGBO(229, 229, 229, 0.70), thickness: 1)),
              const SizedBox(height: 16),
              ListaCartoes(cartoesCadastrados: controlador.cartoesCadastrados),
              const SizedBox(height: 16),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Divider(color: Color.fromRGBO(229, 229, 229, 0.70), thickness: 1)),
            ],
          ),
        ),
      ),
    );
  }
}
