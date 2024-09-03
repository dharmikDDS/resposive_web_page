import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_demo/utils/colors.dart';
import 'package:responsive_demo/utils/context_ext.dart';
import 'package:responsive_demo/utils/number_ext.dart';

class QuickInfoCard extends StatelessWidget {
  const QuickInfoCard({
    super.key,
    required this.title,
    required this.numbers,
    required this.footer,
    required this.bgColor,
    required this.footerColor,
  });

  final String title;
  final int numbers;
  final String footer;
  final Color bgColor;
  final Color footerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(
        horizontal: context.isMobile ? 0 : 5,
        vertical: context.isMobile ? 5 : 0,
      ),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: context.isWeb ? 18 : 16,
              fontWeight: FontWeight.w500,
              color: AppColors.textColor,
            ),
          ),
          10.verticleSpace,
          Text(
            numbers.toString(),
            style: GoogleFonts.poppins(
              fontSize: context.isWeb ? 36 : 32,
              fontWeight: FontWeight.w500,
              color: AppColors.textColor,
            ),
          ),
          10.verticleSpace,
          Text(
            footer,
            style: GoogleFonts.roboto(
              fontSize: context.isWeb ? 16 : 14,
              fontWeight: FontWeight.w400,
              color: footerColor,
            ),
          ),
        ],
      ),
    );
  }
}
