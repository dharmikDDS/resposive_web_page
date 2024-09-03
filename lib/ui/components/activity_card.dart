import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_demo/utils/colors.dart';
import 'package:responsive_demo/utils/context_ext.dart';
import 'package:responsive_demo/utils/number_ext.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: context.isTablet ? 250 : double.infinity,
      // constraints: BoxConstraints.loose(const Size.fromHeight(340)),
      decoration: BoxDecoration(
        color: AppColors.textColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: AppColors.blue2,
            height: 40,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Recent Activity',
              style: GoogleFonts.poppins(
                fontSize: context.isWeb ? 18 : 16,
                color: AppColors.bgColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '10.40 AM, Tue 05 may 2024',
                  style: GoogleFonts.roboto(
                    fontSize: 10,
                    color: AppColors.bgColor.withAlpha(150),
                  ),
                ),
                10.verticleSpace,
                Text(
                  'You posted a new job',
                  style: GoogleFonts.poppins(
                    fontSize: context.isWeb ? 18 : 16,
                    color: AppColors.bgColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                10.verticleSpace,
                Text(
                  'Kindly check the requirements and terms of work and make sure everything is right.',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: AppColors.bgColor.withAlpha(150),
                  ),
                ),
                30.verticleSpace,
                Text(
                  'Today you makes 12 activities.',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: AppColors.bgColor,
                  ),
                ),
                10.verticleSpace,
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      fixedSize: const Size.fromHeight(45)),
                  child: Text(
                    'See All Activity',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.bgColor,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
