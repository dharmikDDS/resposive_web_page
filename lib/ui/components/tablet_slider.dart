import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_demo/dashboard_provider.dart';
import 'package:responsive_demo/utils/colors.dart';
import 'package:responsive_demo/utils/constants.dart';
import 'package:responsive_demo/utils/context_ext.dart';
import 'package:responsive_demo/utils/number_ext.dart';

class TabletSliderMenu extends StatelessWidget {
  const TabletSliderMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * .12,
      backgroundColor: AppColors.secondaryBgColor,
      shape: const ContinuousRectangleBorder(borderRadius: BorderRadius.zero),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Text(
              'WeHR',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.textColor,
              ),
            ),
          ),
          20.verticleSpace,
          SliderOptionList(title: 'MAIN MENU', optionsData: mainMenuList),
          20.verticleSpace,
          SliderOptionList(title: 'OTHER MENU', optionsData: otherMenuList),
        ],
      ),
    );
  }
}

class SliderOptionList extends StatelessWidget {
  const SliderOptionList({
    super.key,
    required this.title,
    required this.optionsData,
  });

  final String title;
  final List<Map<String, dynamic>> optionsData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: GoogleFonts.roboto(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: AppColors.greyTextColor,
          ),
        ),
        10.verticleSpace,
        ...optionsData.map(
          (e) => SliderOptionTile(
            iconPath: e[kODIconKey],
            title: e[kODTitleKey],
          ),
        ),
      ],
    );
  }
}

class SliderOptionTile extends StatelessWidget {
  const SliderOptionTile({
    super.key,
    required this.iconPath,
    required this.title,
  });

  final String iconPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardProvider>(builder: (context, provider, _) {
      return IconButton(
        onPressed: () {
          provider.changeSliderOption(title);
        },
        padding: const EdgeInsets.all(20),
        icon: SvgPicture.asset(
          iconPath,
          color: provider.selectedSliderOption == title
              ? AppColors.primaryColor
              : AppColors.iconColor,
        ),
      );
    });
  }
}
