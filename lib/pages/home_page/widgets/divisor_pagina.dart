import 'package:flutter/material.dart';

class DivisorPagina extends StatelessWidget {
  final Color color;
  const DivisorPagina({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Divider(color: color, thickness: 1),
    );
  }
}
