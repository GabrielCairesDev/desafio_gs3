import 'package:desafio_gs3/utils/svg_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MensagemNotificacao extends StatelessWidget {
  const MensagemNotificacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _mensagemIcone(),
        const SizedBox(width: 8),
        _notificacaoIcone(),
      ],
    );
  }

  _mensagemIcone() {
    return InkWell(
      onTap: () => debugPrint('Mensagem'),
      child: SvgPicture.asset(SvgIcons.iconeMensagem, height: 21, width: 21),
    );
  }
}

_notificacaoIcone() {
  return InkWell(
    onTap: () => debugPrint('Notificação'),
    child: SvgPicture.asset(SvgIcons.iconeNotificacao, height: 21, width: 21),
  );
}
