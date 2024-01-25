import 'package:flutter/material.dart';

class BoasVindas extends StatelessWidget {
  const BoasVindas({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: <TextSpan>[
          TextSpan(text: 'Olá, ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, fontFamily: 'Mulish')),
          TextSpan(text: 'Cliente', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, fontFamily: 'Mulish')),
        ],
      ),
    );
  }
}
