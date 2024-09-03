import 'package:flutter/material.dart';
import 'package:responsive_demo/ui/mobile_dasboard.dart';
import 'package:responsive_demo/ui/tablet_dashboard.dart';
import 'package:responsive_demo/ui/web_dashboard.dart';
import 'package:responsive_demo/ui/reponsive_layout.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: MobileDashboard(),
      tablet: TabletDashboard(),
      web: WebDashboard(),
    );
  }
}
