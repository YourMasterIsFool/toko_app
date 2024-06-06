import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NotTransitionPageRoute<T> extends MaterialPageRoute<T> {
  NotTransitionPageRoute(
      {required WidgetBuilder builder, RouteSettings? settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    // TODO: implement buildTransitions
    return child;
  }
}
