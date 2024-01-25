import 'package:desafio_gs3/utils/colors_app.dart';
import 'package:desafio_gs3/utils/svg_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MeusFavoritosCabecalho extends StatelessWidget {
  const MeusFavoritosCabecalho({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              const Text('Meus favoritos', style: TextStyle(fontSize: 14, color: ColorsApp.cor_05, fontWeight: FontWeight.w700, fontFamily: 'Mulish')),
              const Spacer(),
              const Text('Personalizar', style: TextStyle(fontSize: 8, color: ColorsApp.cor_05, fontWeight: FontWeight.w700, fontFamily: 'Mulish')),
              const SizedBox(width: 3),
              InkWell(onTap: () => debugPrint('Personalizar'), child: SvgPicture.asset(SvgIcons.iconePersonalizar, height: 18, width: 18)),
            ],
          ),
        ],
      ),
    );
  }
}
