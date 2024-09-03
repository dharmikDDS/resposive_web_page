import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_demo/utils/assets.dart';
import 'package:responsive_demo/utils/colors.dart';
import 'package:responsive_demo/utils/context_ext.dart';
import 'package:responsive_demo/utils/number_ext.dart';

class AnnouncementTile extends StatelessWidget {
  const AnnouncementTile({
    super.key,
    required this.title,
    required this.time,
    this.showPin = false,
    this.isPinned = false,
  });

  final String title;
  final String time;
  final bool showPin;
  final bool isPinned;

  @override
  Widget build(BuildContext context) {
    if (context.isMobile) {
      return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: AppColors.secondaryBgColor,
          borderRadius: BorderRadius.circular(10),
          border: const Border.fromBorderSide(
            BorderSide(
              color: AppColors.borderColor,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.greyTextColor,
              ),
            ),
            5.verticleSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  time,
                  style: GoogleFonts.roboto(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: AppColors.greyTextColor,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: _buildTrailingActionsList(),
                ),
              ],
            )
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        tileColor: AppColors.secondaryBgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: AppColors.borderColor),
        ),
        title: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: context.isTablet ? 15 : 16,
            fontWeight: FontWeight.w400,
            color: AppColors.greyTextColor,
          ),
        ),
        subtitle: Text(
          time,
          style: GoogleFonts.roboto(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: AppColors.greyTextColor,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: _buildTrailingActionsList(),
        ),
      ),
    );
  }

  _buildTrailingActionsList() => [
        if (showPin)
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppAssets.pin,
              color: isPinned ? AppColors.greyTextColor : AppColors.iconColor,
            ),
          ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_horiz,
            color: AppColors.iconColor,
          ),
        ),
      ];
}
