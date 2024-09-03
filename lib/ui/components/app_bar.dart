import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_demo/utils/assets.dart';
import 'package:responsive_demo/utils/colors.dart';
import 'package:responsive_demo/utils/context_ext.dart';
import 'package:responsive_demo/utils/number_ext.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, this.onMenuTap});

  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: context.isMobile ? 10 : 20,
          horizontal: context.isWeb ? 0 : 10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.borderColor, width: 2),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (!context.isWeb) ...[
            IconButton(
              onPressed: onMenuTap,
              icon: const Icon(
                Icons.menu,
                color: AppColors.greyTextColor,
              ),
            ),
            10.horizontalSpace
          ],
          if (context.isMobile)
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AppAssets.search,
                color: AppColors.greyTextColor,
              ),
            ),
          if (!context.isMobile)
            SizedBox(
              height: 50,
              width: context.isTablet ? 245 : 343,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.secondaryBgColor,
                  hintText: 'Search',
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 14,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      AppAssets.search,
                      color: AppColors.iconColor,
                      height: 24,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: const BorderSide(
                      color: AppColors.borderColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: const BorderSide(
                      color: AppColors.borderColor,
                    ),
                  ),
                ),
              ),
            ),
          const Expanded(child: SizedBox(width: 20)),
          SvgPicture.asset(AppAssets.bell),
          20.horizontalSpace,
          SvgPicture.asset(AppAssets.message),
          20.horizontalSpace,
          const CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                'https://mech.iitm.ac.in/images/inner-facs/anand_k.png'),
          ),
          10.horizontalSpace,
          if (context.isWeb) ...[
            Text(
              'Admirra John',
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textColor),
            ),
            5.horizontalSpace,
          ],
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.chevron_down,
              color: AppColors.greyTextColor,
            ),
          )
        ],
      ),
    );
  }
}
