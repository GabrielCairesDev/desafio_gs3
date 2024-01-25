import 'package:desafio_gs3/page/home_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const home = '/';

  static Map<String, WidgetBuilder> routes() {
    return {
      home: (context) => const HomePage(),
    };
  }
}
