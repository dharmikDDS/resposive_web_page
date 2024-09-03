import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_demo/dashboard_provider.dart';
import 'package:responsive_demo/utils/colors.dart';
import 'package:responsive_demo/utils/constants.dart';
import 'package:responsive_demo/utils/context_ext.dart';
import 'package:responsive_demo/utils/number_ext.dart';

class SliderMenu extends StatefulWidget {
  const SliderMenu({super.key});

  @override
  State<SliderMenu> createState() => _SliderMenuState();
}

class _SliderMenuState extends State<SliderMenu> {
  final String selectedOption = 'Dashboard';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * (context.isMobile ? .6 : .2),
      backgroundColor: AppColors.secondaryBgColor,
      shape: const ContinuousRectangleBorder(borderRadius: BorderRadius.zero),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 40),
              child: Text(
                'WeHR',
                style: GoogleFonts.poppins(
                  fontSize: 36,
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.roboto(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppColors.greyTextColor,
          ),
        ),
        10.verticleSpace,
        ...optionsData.map(
          (e) => SliderOptionTile(
            iconPath: e[kODIconKey],
            title: e[kODTitleKey],
            onTap: () {},
          ),
        ),
      ],
    );
  }
}

class SliderOptionTile extends StatelessWidget {
  const SliderOptionTile(
      {super.key, required this.iconPath, required this.title, this.onTap});

  final String iconPath;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardProvider>(
      builder: (context, provider, _) {
        return ListTile(
          onTap: () {
            provider.changeSliderOption(title);
          },
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          leading: SvgPicture.asset(
            iconPath,
            color: provider.selectedSliderOption == title
                ? AppColors.primaryColor
                : AppColors.iconColor,
          ),
          title: Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: provider.selectedSliderOption == title
                  ? AppColors.primaryColor
                  : AppColors.greyTextColor,
            ),
          ),
        );
      },
    );
  }
}
