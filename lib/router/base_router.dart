import 'package:flutter/material.dart';
import 'package:toko_app_flutter/features/dashboard/presentation/dashboard_page.dart';
import 'package:toko_app_flutter/helper/not_transition_page_route.dart';
import 'package:toko_app_flutter/pages/not_found_page.dart';

class BaseRouter {
  final GlobalKey<NavigatorState> baseRouteNavigatorKey =
      GlobalKey<NavigatorState>();
  List<Map<String, dynamic>> listMenuSidebar = [
    {
      'route': '/product',
      'title': 'Product',
      'icon': Icons.sports_basketball,
    },
    {'route': '/', 'title': 'Dashboard', 'icon': Icons.home},
    {'route': '/stock', 'title': 'Stock', 'icon': Icons.shopping_bag}
  ];

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return NotTransitionPageRoute(builder: (context) => DashboardPage());

      default:
        return MaterialPageRoute(builder: (context) => NotFoundPage());
    }
  }
}
