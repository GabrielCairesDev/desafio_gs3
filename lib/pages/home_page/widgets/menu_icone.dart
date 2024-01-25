import 'package:desafio_gs3/utils/svg_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePageMenuIcon extends StatelessWidget {
  const HomePageMenuIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => debugPrint('Menu'),
      child: SvgPicture.asset(SvgIcons.iconeMenu, height: 15, width: 18.75),
    );
  }
}
