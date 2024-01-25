import 'package:flutter/material.dart';

class DivisorPagina extends StatelessWidget {
  final Color color;
  const DivisorPagina({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Divider(color: color, thickness: 1);
  }
}
