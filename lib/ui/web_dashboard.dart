import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
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

class WebDashboard extends StatelessWidget {
  const WebDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const SliderMenu(),
          20.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppBarWidget(),
                20.verticleSpace,
                Text(
                  'Dashboard',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textColor,
                  ),
                ),
                10.verticleSpace,
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: _buildLeftPartition(),
                      ),
                      20.horizontalSpace,
                      Expanded(
                        flex: 1,
                        child: _buildRightPartition(),
                      ),
                      20.horizontalSpace,
                    ],
                  ),
                ),
                20.verticleSpace,
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildLeftPartition() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
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
        const Expanded(child: AnnouncementSection()),
      ],
    );
  }

  _buildRightPartition() {
    return Column(
      children: [
        const ActivityCard(),
        20.verticleSpace,
        const Expanded(child: UpcommingScheduleSection()),
      ],
    );
  }
}
