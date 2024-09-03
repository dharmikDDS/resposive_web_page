import 'package:flutter/material.dart';

extension ResponsiveChecks on BuildContext {
  bool get isMobile => MediaQuery.of(this).size.width < 550;

  bool get isTablet =>
      MediaQuery.of(this).size.width >= 550 &&
      MediaQuery.of(this).size.width < 900;

  bool get isWeb => MediaQuery.of(this).size.width >= 900;
}
