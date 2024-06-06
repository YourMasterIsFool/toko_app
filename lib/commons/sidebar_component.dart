import 'package:flutter/material.dart';
import 'package:toko_app_flutter/helper/not_transition_page_route.dart';
import 'package:toko_app_flutter/router/base_router.dart';
import 'package:toko_app_flutter/style.dart';

class SidebarComponent extends StatefulWidget {
  const SidebarComponent({super.key});

  @override
  State<SidebarComponent> createState() => _SidebarComponentState();
}

class _SidebarComponentState extends State<SidebarComponent> {
  String selectedRouteName = '/';

  BaseRouter baseRouter = BaseRouter();
  void onSelectedSidebarMenu(String name) {
    setState(() {
      selectedRouteName = name;
    });
    baseRouter.baseRouteNavigatorKey.currentState?.pushNamedAndRemoveUntil(
        selectedRouteName, (Route<dynamic> route) => false);
  }

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(20),
        ),
        width: 250,
        height: MediaQuery.of(context).size.height - 10,
        // child: SingleChildScrollView(
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       SizedBox(
        //         height: defaultPadding,
        //       ),
        //       Padding(
        //         padding: EdgeInsets.symmetric(horizontal: 12),
        //         child: Text(
        //           'Tokoku',
        //           style: textLargeTitle,
        //         ),
        //       ),
        //       SizedBox(
        //         height: defaultPadding,
        //       ),
        //       ListView.builder(
        //         itemBuilder: (context, index) {
        //           return navButton(baseRouter.listMenuSidebar[index]['icon'],
        //               baseRouter.listMenuSidebar[index]['title']);
        //         },
        //         itemCount: baseRouter.listMenuSidebar.length,
        //         scrollDirection: Axis.vertical,
        //         primary: false,
        //         physics: NeverScrollableScrollPhysics(),
        //       )
        //     ],
        //   ),
        // ),

        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      'Tokoku',
                      style: textLargeTitle,
                    ),
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                ],
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
              return navButton(
                  baseRouter.listMenuSidebar[index]['icon'],
                  baseRouter.listMenuSidebar[index]['title'],
                  baseRouter.listMenuSidebar[index]['route'],
                  baseRouter.listMenuSidebar[index]['route'] ==
                      selectedRouteName);
            }, childCount: baseRouter.listMenuSidebar.length))
          ],
        ),
      ),
    );
  }

  Widget navButton(
      IconData icon, String text, String routeName, bool isSelected) {
    return Container(
      child: TextButton(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 16,
            ),
            SizedBox(
              width: 6.0,
            ),
            Text(text)
          ],
        ),
        onPressed: () {
          onSelectedSidebarMenu(routeName);
        },
        style: navigatorSidebarButtonStyle?.copyWith(
            foregroundColor: isSelected
                ? WidgetStatePropertyAll(Color(Colors.black.value))
                : null,
            backgroundColor: isSelected
                ? WidgetStatePropertyAll(
                    Color(Colors.white.value).withOpacity(1))
                : null),
      ),
    );
  }
}
