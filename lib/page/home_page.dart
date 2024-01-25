import 'package:desafio_gs3/theme/background.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BackGround(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 24, right: 18, left: 18),
            child: Text('Home'),
          ),
        ),
      ),
    );
  }
}
