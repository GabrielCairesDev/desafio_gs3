import 'package:flutter/material.dart';
import 'routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desafio GS3',
      theme: ThemeData(),
      initialRoute: AppRoutes.home,
      routes: AppRoutes.routes(),
    );
  }
}
