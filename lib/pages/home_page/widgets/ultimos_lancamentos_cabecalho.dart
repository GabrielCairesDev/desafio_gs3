import 'package:desafio_gs3/utils/colors_app.dart';
import 'package:desafio_gs3/utils/svg_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UltimosLancamentosCabecalho extends StatelessWidget {
  const UltimosLancamentosCabecalho({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Últimos lançamentos', style: TextStyle(fontSize: 14, color: ColorsApp.cor_05, fontWeight: FontWeight.w700, fontFamily: 'Mulish')),
              const Spacer(),
              const Text('Ver todos', style: TextStyle(fontSize: 8, color: ColorsApp.cor_05, fontWeight: FontWeight.w700, fontFamily: 'Mulish')),
              const SizedBox(width: 9),
              InkWell(
                onTap: () => debugPrint('Ver todos'),
                child: SvgPicture.asset(SvgIcons.iconeSetaDireita, height: 14, width: 7.8),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
