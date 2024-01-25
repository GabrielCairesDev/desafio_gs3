import 'package:flutter/material.dart';
import 'routes/routes.dart';
import 'package:intl/date_symbol_data_local.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('pt_BR', null);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desafio GS3',
      theme: ThemeData(),
      initialRoute: AppRoutes.home,
      routes: AppRoutes.routes(),
    );
  }
}
