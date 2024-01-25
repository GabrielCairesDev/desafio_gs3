import 'package:desafio_gs3/models/cartao_model.dart';
import 'package:flutter/material.dart';

class ListaCartoes extends StatelessWidget {
  final List<CartaoModel> cartoesCadastrados;
  const ListaCartoes({super.key, required this.cartoesCadastrados});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.0,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: cartoesCadastrados.length,
        itemBuilder: (itemBuilder, index) {
          return _cartoesDesign(index);
        },
      ),
    );
  }

  _cartoesDesign(int index) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: (index == cartoesCadastrados.length - 1) ? 16 : 0),
      width: 301.0,
      height: 140.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFF2B66BC), Color(0xFF132D55)],
        ),
      ),
    );
  }
}
