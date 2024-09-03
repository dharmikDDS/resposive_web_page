import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_demo/ui/components/announcement_tile.dart';
import 'package:responsive_demo/utils/assets.dart';
import 'package:responsive_demo/utils/colors.dart';
import 'package:responsive_demo/utils/constants.dart';
import 'package:responsive_demo/utils/context_ext.dart';
import 'package:responsive_demo/utils/number_ext.dart';

class AnnouncementSection extends StatelessWidget {
  const AnnouncementSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: const Border.fromBorderSide(
          BorderSide(color: AppColors.borderColor),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: ListView(
              primary: false,
              shrinkWrap: true,
              clipBehavior: Clip.hardEdge,
              padding: const EdgeInsets.all(15),
              children: [
                _buildTitleRow(context),
                8.verticleSpace,
                ...announcementsDataList.map(
                  (e) => AnnouncementTile(
                    title: e[kTitleKey],
                    time: e[kTimeKey],
                    showPin: true,
                    isPinned: e[kPinnedKey],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: AppColors.bgColor,
              border: Border(
                top: BorderSide(color: AppColors.borderColor),
              ),
            ),
            child: Text(
              'Show all announcements',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }

  _buildTitleRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Announcements',
          style: GoogleFonts.poppins(
            fontSize: context.isWeb ? 18 : 16,
            fontWeight: FontWeight.w500,
            color: AppColors.textColor,
          ),
        ),
      ],
    );
  }
}
