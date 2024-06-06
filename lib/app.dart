import 'package:flutter/material.dart';
import 'package:toko_app_flutter/commons/sidebar_component.dart';
import 'package:toko_app_flutter/router/base_router.dart';

class AppComponent extends StatefulWidget {
  const AppComponent({super.key});

  @override
  State<AppComponent> createState() => _AppComponentState();
}

class _AppComponentState extends State<AppComponent> {
  @override
  Widget build(BuildContext context) {
    BaseRouter baseRouter = BaseRouter();
    return Scaffold(
      body: Row(
        children: [
          SidebarComponent(),
          Expanded(
              child: Container(
            child: Navigator(
              key: baseRouter.baseRouteNavigatorKey,
              onGenerateRoute: BaseRouter.onGenerateRoute,
              initialRoute: '/',
            ),
          ))
        ],
      ),
    );
  }
}
