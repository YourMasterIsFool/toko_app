import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatefulWidget {
  const ResponsiveBuilder({super.key, this.tablet, this.dekstop, this.mobile});

  final Widget? tablet;
  final Widget? dekstop;
  final Widget? mobile;

  @override
  State<ResponsiveBuilder> createState() => _ResponsiveBuilderState();
}

class _ResponsiveBuilderState extends State<ResponsiveBuilder> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 768) {
        return Container(
          child: widget.dekstop,
        );
      }
      if (constraints.maxWidth > 568) {
        return Container(
          child: widget.tablet,
        );
      }
      return Container(
        child: widget.mobile,
      );
    });
  }
}
