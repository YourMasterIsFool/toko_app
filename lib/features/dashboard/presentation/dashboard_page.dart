import 'package:flutter/material.dart';
import 'package:toko_app_flutter/custom_theme.dart';
import 'package:toko_app_flutter/helper/responsive_builder.dart';
import 'package:toko_app_flutter/style.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(dekstop: dekstopWidget());
  }

  Widget dekstopWidget() {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: defaultPadding),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(bottom: defaultPadding),
                child: Text(
                  "Overview",
                  style: textTheme().titleLarge?.copyWith(fontSize: 24),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
