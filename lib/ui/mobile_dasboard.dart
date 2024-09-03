import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_demo/ui/components/activity_card.dart';
import 'package:responsive_demo/ui/components/anouncment_section.dart';
import 'package:responsive_demo/ui/components/app_bar.dart';
import 'package:responsive_demo/ui/components/quick_info_card.dart';
import 'package:responsive_demo/ui/components/slider_menu.dart';
import 'package:responsive_demo/ui/components/total_info_card.dart';
import 'package:responsive_demo/ui/components/upcomming_schedule_tile.dart';
import 'package:responsive_demo/utils/colors.dart';
import 'package:responsive_demo/utils/constants.dart';
import 'package:responsive_demo/utils/number_ext.dart';

class MobileDashboard extends StatefulWidget {
  const MobileDashboard({super.key});

  @override
  State<MobileDashboard> createState() => _MobileDashboardState();
}

class _MobileDashboardState extends State<MobileDashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const SliderMenu(),
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              onMenuTap: () {
                _scaffoldKey.currentState?.openDrawer();
              },
            ),
            Expanded(
              child: ListView(
                // shrinkWrap: true,
                padding: const EdgeInsets.all(15),
                children: [
                  ..._buildQuickInfoSection(),
                  10.verticleSpace,
                  ...totalinfoList.map(
                    (e) => TotalInfoCard(
                      title: e[kTitleKey],
                      totalNumber: e[kTotalNumberKey],
                      men: e[kTotalMenKey],
                      women: e[kTotalWomenKey],
                      increasePercent: e[kIncreasePercent],
                    ),
                  ),
                  10.verticleSpace,
                  const AnnouncementSection(),
                  10.verticleSpace,
                  const ActivityCard(),
                  10.verticleSpace,
                  const UpcommingScheduleSection(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildQuickInfoSection() {
    return [
      Text(
        'Dashboard',
        style: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: AppColors.textColor,
        ),
      ),
      10.verticleSpace,
      ...quickInfoList.map(
        (e) => QuickInfoCard(
          title: e[kTitleKey],
          numbers: e[kQINumberKey],
          footer: e[kQIFotterKey],
          bgColor: e[kQIBgColorKey],
          footerColor: e[kQIFooterColorKey],
        ),
      ),
    ];
  }
}
