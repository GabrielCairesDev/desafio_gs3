import 'package:desafio_gs3/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const home = '/';

  static Map<String, WidgetBuilder> routes() {
    return {
      home: (context) => HomePage(),
    };
  }
}
