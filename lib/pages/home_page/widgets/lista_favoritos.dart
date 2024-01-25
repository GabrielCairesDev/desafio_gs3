import 'package:desafio_gs3/models/paginas_favoritas.dart';
import 'package:desafio_gs3/utils/colors_app.dart';
import 'package:desafio_gs3/utils/svg_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListaFavoritos extends StatelessWidget {
  final List<PaginasFavoritas> paginasFavoritas;
  const ListaFavoritos({super.key, required this.paginasFavoritas});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 92.0,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: paginasFavoritas.length,
          itemBuilder: (itemBuilder, index) {
            return _botoes(index);
          },
        ),
      ),
    );
  }

  _botoes(int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: (index == 0) ? 20 : 35, right: (index == paginasFavoritas.length - 1) ? 20 : 0),
          height: 66,
          width: 66,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: const Color.fromRGBO(229, 229, 229, 0.20),
          ),
          child: Center(
            child: SvgPicture.asset(_iconeBotoes(paginasFavoritas[index].paginaFavorita), height: 30, width: 30),
          ),
        ),
        const SizedBox(height: 6),
        Container(
          margin: EdgeInsets.only(left: (index == 0) ? 20 : 35, right: (index == paginasFavoritas.length - 1) ? 20 : 0),
          width: 81,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              _tituloBotoes(paginasFavoritas[index].paginaFavorita),
              style: const TextStyle(fontSize: 10, color: ColorsApp.cor_05, fontWeight: FontWeight.w400, fontFamily: 'Mulish'),
            ),
          ),
        )
      ],
    );
  }

  _tituloBotoes(int int) {
    switch (int) {
      case 1:
        return 'Cartão virtual';
      case 2:
        return 'Cartão adicional';
      case 3:
        return 'Seguros';
      case 4:
        return 'Pacote SMS';
      default:
        return 'Erro';
    }
  }

  _iconeBotoes(int int) {
    switch (int) {
      case 1:
        return SvgIcons.iconeCartaoAdicional;
      case 2:
        return SvgIcons.iconeCartaoVirtual;
      case 3:
        return SvgIcons.iconeSeguros;
      case 4:
        return SvgIcons.iconeSMS;
      default:
        return SvgIcons.iconeSMS;
    }
  }
}
