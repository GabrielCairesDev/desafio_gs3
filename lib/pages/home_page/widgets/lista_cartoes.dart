import 'package:desafio_gs3/models/cartao_model.dart';
import 'package:desafio_gs3/pages/home_page/widgets/divisor_pagina.dart';
import 'package:desafio_gs3/utils/colors_app.dart';
import 'package:desafio_gs3/utils/svg_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class ListaCartoes extends StatelessWidget {
  final List<CartaoModel> cartoesCadastrados;
  final bool cartaoVisivel;
  final Function() mudarCartaoVisivel;
  const ListaCartoes({super.key, required this.cartoesCadastrados, required this.cartaoVisivel, required this.mudarCartaoVisivel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.0,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: cartoesCadastrados.length,
        itemBuilder: (itemBuilder, index) {
          final cartao = cartoesCadastrados[index];
          return _cartoesDesign(index, cartao: cartao);
        },
      ),
    );
  }

  _cartoesDesign(int index, {required CartaoModel cartao}) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: (index == cartoesCadastrados.length - 1) ? 16 : 0),
      width: 301.0,
      height: 140.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: _cartaoCores(index),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _bandeiraCartao(),
              _numeroNomeCartao(cartao),
              const Spacer(),
              _iconeOlho(),
              const SizedBox(width: 16),
            ],
          ),
          const DivisorPagina(color: ColorsApp.cor_04),
          _limiteDiaTexto(),
          _limiteDiaValores(cartao)
        ],
      ),
    );
  }

  _bandeiraCartao() {
    return Container(
      margin: const EdgeInsets.only(top: 14, left: 14, right: 16, bottom: 13),
      width: 88,
      height: 56,
      color: ColorsApp.cor_03,
    );
  }

  _numeroNomeCartao(CartaoModel cartao) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (cartaoVisivel) ? _numeroCartaoVisivel(cartao) : _numeroCartaoNaoVisivel(cartao),
        Text(cartao.nome.toString(), style: TextStyle(fontSize: 14, color: ColorsApp.cor_01.withOpacity(0.76), fontWeight: FontWeight.w400, fontFamily: 'Mulish')),
      ],
    );
  }

  _numeroCartaoNaoVisivel(CartaoModel cartao) {
    return Row(
      children: [
        SvgPicture.asset(SvgIcons.iconeQuatroBolinhas, height: 6.25),
        const SizedBox(width: 6.12),
        Text(
          cartao.numero.toString().substring(cartao.numero.toString().length - 4),
          style: const TextStyle(fontSize: 14, color: ColorsApp.cor_01, fontWeight: FontWeight.w400, fontFamily: 'Mulish'),
        ),
      ],
    );
  }

  _numeroCartaoVisivel(CartaoModel cartao) => Text(
        cartao.numero.toString(),
        style: const TextStyle(fontSize: 13, color: ColorsApp.cor_01, fontWeight: FontWeight.w400, fontFamily: 'Mulish'),
      );

  _iconeOlho() {
    return InkWell(
      onTap: () => mudarCartaoVisivel(),
      child: SvgPicture.asset(
        SvgIcons.iconeOlho,
        height: 18,
        width: 18,
      ),
    );
  }

  _limiteDiaTexto() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Limite disponível', style: TextStyle(fontSize: 8, color: ColorsApp.cor_01, fontWeight: FontWeight.w400, fontFamily: 'Mulish')),
          Text('Melhor dia de compra', style: TextStyle(fontSize: 8, color: ColorsApp.cor_01, fontWeight: FontWeight.w400, fontFamily: 'Mulish')),
        ],
      ),
    );
  }

  _limiteDiaValores(CartaoModel cartao) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(formatarMoeda(cartao.limite), style: const TextStyle(fontSize: 16, color: ColorsApp.cor_01, fontWeight: FontWeight.w700, fontFamily: 'Mulish')),
          Text(cartao.melhorDia.toString(), style: const TextStyle(fontSize: 16, color: ColorsApp.cor_01, fontWeight: FontWeight.w700, fontFamily: 'Mulish')),
        ],
      ),
    );
  }

  _cartaoCores(int index) {
    if (index % 2 == 0) {
      return [
        const Color(0xFF2B66BC),
        const Color(0xFF132D55),
      ];
    } else {
      return [
        const Color(0xFF00494B),
        const Color(0xFF132D55),
      ];
    }
  }

  formatarMoeda(double valor) {
    var formatoMoeda = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
    return formatoMoeda.format(valor);
  }
}
