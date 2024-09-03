import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_demo/ui/components/activity_card.dart';
import 'package:responsive_demo/ui/components/anouncment_section.dart';
import 'package:responsive_demo/ui/components/app_bar.dart';
import 'package:responsive_demo/ui/components/quick_info_card.dart';
import 'package:responsive_demo/ui/components/slider_menu.dart';
import 'package:responsive_demo/ui/components/tablet_slider.dart';
import 'package:responsive_demo/ui/components/total_info_card.dart';
import 'package:responsive_demo/ui/components/upcomming_schedule_tile.dart';
import 'package:responsive_demo/utils/colors.dart';
import 'package:responsive_demo/utils/constants.dart';
import 'package:responsive_demo/utils/number_ext.dart';

class TabletDashboard extends StatefulWidget {
  const TabletDashboard({super.key});

  @override
  State<TabletDashboard> createState() => _TabletDashboardState();
}

class _TabletDashboardState extends State<TabletDashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const TabletSliderMenu(),
        Expanded(
            child: Scaffold(
          key: _scaffoldKey,
          drawer: const SliderMenu(),
          body: Column(
            children: [
              const AppBarWidget(),
              Expanded(
                child: _buildDashboard(),
              )
            ],
          ),
        )),
      ],
    );
  }

  _buildDashboard() {
    return SingleChildScrollView(
      primary: true,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Dashboard',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: AppColors.textColor,
            ),
          ),
          10.verticleSpace,
          Row(
            children: quickInfoList
                .map(
                  (e) => Expanded(
                    child: QuickInfoCard(
                      title: e[kTitleKey],
                      numbers: e[kQINumberKey],
                      footer: e[kQIFotterKey],
                      bgColor: e[kQIBgColorKey],
                      footerColor: e[kQIFooterColorKey],
                    ),
                  ),
                )
                .toList(),
          ),
          10.verticleSpace,
          Row(
            children: totalinfoList
                .map(
                  (e) => Expanded(
                    child: TotalInfoCard(
                      title: e[kTitleKey],
                      totalNumber: e[kTotalNumberKey],
                      men: e[kTotalMenKey],
                      women: e[kTotalWomenKey],
                      increasePercent: e[kIncreasePercent],
                    ),
                  ),
                )
                .toList(),
          ),
          10.verticleSpace,
          const AnnouncementSection(),
          10.verticleSpace,
          Row(
            children: [
              const ActivityCard(),
              10.horizontalSpace,
              const Expanded(flex: 2, child: UpcommingScheduleSection()),
            ],
          )
        ],
      ),
    );
  }
}
