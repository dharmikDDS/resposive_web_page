import 'package:flutter/material.dart';
import 'package:responsive_demo/utils/context_ext.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.web});

  final Widget mobile;
  final Widget tablet;
  final Widget web;

  @override
  Widget build(BuildContext context) {
    return context.isMobile
        ? mobile
        : context.isTablet
            ? tablet
            : web;
  }
}
