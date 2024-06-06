import 'package:flutter/material.dart';
import 'package:toko_app_flutter/app.dart';
import 'package:toko_app_flutter/features/dashboard/presentation/dashboard_page.dart';
import 'package:toko_app_flutter/pages/not_found_page.dart';

class CustomRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => AppComponent());

      default:
        return MaterialPageRoute(builder: (context) => NotFoundPage());
    }
  }
}
