import 'package:desafio_gs3/utils/colors_app.dart';
import 'package:desafio_gs3/utils/svg_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuRodaPe extends StatefulWidget {
  final int index;
  final Function(int) menusTrocar;
  const MenuRodaPe({super.key, required this.index, required this.menusTrocar});

  @override
  State<MenuRodaPe> createState() => _MenuRodaPeState();
}

class _MenuRodaPeState extends State<MenuRodaPe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: ColorsApp.cor_01,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35.0),
          topRight: Radius.circular(35.0),
        ),
        border: Border(
          top: BorderSide(color: ColorsApp.cor_02, width: 4.0),
          left: BorderSide(color: ColorsApp.cor_02, width: 4.0),
          right: BorderSide(color: ColorsApp.cor_02, width: 4.0),
        ),
      ),
      child: _icones(),
    );
  }

  _icones() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        IconButton(icon: SvgPicture.asset(SvgIcons.iconeHome, color: (widget.index == 0) ? ColorsApp.cor_06 : ColorsApp.cor_08), onPressed: () => widget.menusTrocar(0)),
        IconButton(icon: SvgPicture.asset(SvgIcons.iconeFatura, color: (widget.index == 1) ? ColorsApp.cor_06 : ColorsApp.cor_08), onPressed: () => widget.menusTrocar(1)),
        IconButton(icon: SvgPicture.asset(SvgIcons.iconeCartao, color: (widget.index == 2) ? ColorsApp.cor_06 : ColorsApp.cor_08), onPressed: () => widget.menusTrocar(2)),
        IconButton(icon: SvgPicture.asset(SvgIcons.iconeShop, color: (widget.index == 3) ? ColorsApp.cor_06 : ColorsApp.cor_08), onPressed: () => widget.menusTrocar(3)),
      ],
    );
  }
}
