import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_demo/utils/colors.dart';
import 'package:responsive_demo/utils/context_ext.dart';
import 'package:responsive_demo/utils/number_ext.dart';

class TotalInfoCard extends StatelessWidget {
  const TotalInfoCard({
    super.key,
    required this.title,
    required this.totalNumber,
    required this.men,
    required this.women,
    required this.increasePercent,
  });

  final String title;
  final int totalNumber;
  final int men;
  final int women;
  final int increasePercent;

  get bgColor => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      width: context.isMobile ? double.infinity : 305,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: const Border.fromBorderSide(
          BorderSide(color: AppColors.borderColor),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: _buildTitleAndGraphRow(context),
          ),
          Expanded(
            child: _buildChartView(context),
          ),
        ],
      ),
    );
  }

  _buildTitleAndGraphRow(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: context.isMobile ? 16 : 18,
            fontWeight: FontWeight.w500,
            color: AppColors.textColor,
          ),
        ),
        Text(
          '$totalNumber',
          style: GoogleFonts.poppins(
            fontSize: context.isWeb ? 48 : 42,
            fontWeight: FontWeight.w500,
            color: AppColors.textColor,
          ),
        ),
        10.verticleSpace,
        Text(
          '$men men',
          style: GoogleFonts.roboto(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppColors.greyTextColor,
          ),
        ),
        5.verticleSpace,
        Text(
          '$women women',
          style: GoogleFonts.roboto(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppColors.greyTextColor,
          ),
        ),
      ],
    );
  }

  _buildChartView(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 100,
          color: AppColors.inverseSecondaryColor,
        ),
        10.verticleSpace,
        Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              color: AppColors.inversPrimaryColor,
              borderRadius: BorderRadius.circular(5)),
          child: Text(
            '+$increasePercent%',
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.roboto(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.greyTextColor,
            ),
          ),
        )
      ],
    );
  }
}
