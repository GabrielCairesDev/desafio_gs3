import 'package:desafio_gs3/models/ultimos_lancamentos_model.dart';
import 'package:desafio_gs3/pages/home_page/widgets/divisor_pagina.dart';
import 'package:desafio_gs3/utils/colors_app.dart';
import 'package:desafio_gs3/utils/svg_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class ListaUltimosLancamentos extends StatelessWidget {
  final Map<String, List<UltimosLancamentoModel>> mapaUltimosLancamentos;

  const ListaUltimosLancamentos({Key? key, required this.mapaUltimosLancamentos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: mapaUltimosLancamentos.length,
        itemBuilder: (context, index) {
          String data = mapaUltimosLancamentos.keys.elementAt(index);
          List<UltimosLancamentoModel> lancamentos = mapaUltimosLancamentos[data]!;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _dataLancamento(data),
              _lancamentos(lancamentos),
            ],
          );
        },
      ),
    );
  }

  _dataLancamento(String data) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        DateFormat('dd MMM', 'pt-BR').format(DateTime.parse(data)).toLowerCase().replaceAll('.', ' '),
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 12,
          fontFamily: 'Mulish',
          color: ColorsApp.cor_06,
        ),
      ),
    );
  }

  _lancamentos(List<UltimosLancamentoModel> lancamentos) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: lancamentos.length,
      itemBuilder: (context, innerIndex) {
        UltimosLancamentoModel lancamento = lancamentos[innerIndex];

        return SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 24),
                child: Row(
                  children: [
                    _icone(lancamento),
                    const SizedBox(width: 16),
                    _nomeData(lancamento),
                    const Spacer(),
                    _valorParcelas(lancamento),
                  ],
                ),
              ),
              const DivisorPagina(color: ColorsApp.cor_02),
            ],
          ),
        );
      },
    );
  }

  _icone(UltimosLancamentoModel lancamento) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: const Color.fromRGBO(229, 229, 229, 0.20),
      ),
      child: Center(
        child: SvgPicture.asset(
          _iconesTipos(lancamento.tipo),
          height: 30,
          width: 30,
        ),
      ),
    );
  }

  _nomeData(UltimosLancamentoModel lancamento) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(lancamento.nome, style: const TextStyle(fontSize: 12, color: ColorsApp.cor_05, fontWeight: FontWeight.w700, fontFamily: 'Mulish')),
        const SizedBox(height: 4),
        Text(
          DateFormat('dd/MM \'às\' HH:mm').format(lancamento.data),
          style: const TextStyle(
            fontSize: 10,
            color: ColorsApp.cor_07,
            fontWeight: FontWeight.w400,
            fontFamily: 'Mulish',
          ),
        ),
      ],
    );
  }

  _valorParcelas(UltimosLancamentoModel lancamento) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(_formatarMoeda(lancamento.valor), style: const TextStyle(fontSize: 12, color: ColorsApp.cor_05, fontWeight: FontWeight.w700, fontFamily: 'Mulish')),
        const SizedBox(height: 4),
        lancamento.parcelas > 0 ? Text('em ${lancamento.parcelas}x', style: const TextStyle(fontSize: 10, color: ColorsApp.cor_07, fontWeight: FontWeight.w400, fontFamily: 'Mulish')) : Container(),
      ],
    );
  }

  _formatarMoeda(double valor) {
    var formatoMoeda = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
    return formatoMoeda.format(valor);
  }

  _iconesTipos(int int) {
    switch (int) {
      case 1:
        return SvgIcons.iconeSmartPhone;
      case 2:
        return SvgIcons.iconeCarro;
      case 3:
        return SvgIcons.iconeCarrinho;
      default:
        return SvgIcons.iconeCarrinho;
    }
  }
}
