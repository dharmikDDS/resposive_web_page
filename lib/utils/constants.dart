import 'package:responsive_demo/utils/assets.dart';
import 'package:responsive_demo/utils/colors.dart';

const String kODIconKey = 'iconPath';
const String kODTitleKey = 'title';
const String kODIsSelectedKey = 'isSelected';

const String kTitleKey = 'title';
const String kQINumberKey = 'numbers';
const String kQIFotterKey = 'footer';
const String kQIBgColorKey = 'bgColor';
const String kQIFooterColorKey = 'footerColor';

const String kTotalNumberKey = 'totalNumbers';
const String kTotalMenKey = 'totalMen';
const String kTotalWomenKey = 'totalWomen';
const String kIncreasePercent = 'increasePercent';

const String kTimeKey = 'key';
const String kPinnedKey = 'pinned';

final mainMenuList = [
  {
    kODIconKey: AppAssets.dashboard,
    kODTitleKey: 'Dashboard',
    kODIsSelectedKey: true
  },
  {
    kODIconKey: AppAssets.recruitment,
    kODTitleKey: 'Recruitment',
    kODIsSelectedKey: false
  },
  {
    kODIconKey: AppAssets.schedule,
    kODTitleKey: 'Schedule',
    kODIsSelectedKey: false
  },
  {
    kODIconKey: AppAssets.employee,
    kODTitleKey: 'Employee',
    kODIsSelectedKey: false
  },
  {
    kODIconKey: AppAssets.department,
    kODTitleKey: 'Department',
    kODIsSelectedKey: false
  },
];

final otherMenuList = [
  {
    kODIconKey: AppAssets.support,
    kODTitleKey: 'Support',
    kODIsSelectedKey: false
  },
  {
    kODIconKey: AppAssets.settings,
    kODTitleKey: 'Settings',
    kODIsSelectedKey: false
  }
];

final quickInfoList = <Map<String, dynamic>>[
  {
    kTitleKey: 'Available Position',
    kQINumberKey: 24,
    kQIFotterKey: '4 Urgently needed',
    kQIBgColorKey: AppColors.inversPrimaryColor,
    kQIFooterColorKey: AppColors.primaryColor
  },
  {
    kTitleKey: 'Job Open',
    kQINumberKey: 10,
    kQIFotterKey: '4 Active hiring',
    kQIBgColorKey: AppColors.inverseSecondaryColor,
    kQIFooterColorKey: AppColors.secondaryColor
  },
  {
    kTitleKey: 'New Employees',
    kQINumberKey: 24,
    kQIFotterKey: '4 Departments',
    kQIBgColorKey: AppColors.inverseTernaryColor,
    kQIFooterColorKey: AppColors.ternaryColor
  },
];

final totalinfoList = <Map<String, dynamic>>[
  {
    kTitleKey: 'Total Employee',
    kTotalNumberKey: 114,
    kTotalMenKey: 78,
    kTotalWomenKey: 36,
    kIncreasePercent: 2,
  },
  {
    kTitleKey: 'Talent Requests',
    kTotalNumberKey: 10,
    kTotalMenKey: 4,
    kTotalWomenKey: 6,
    kIncreasePercent: 5,
  }
];

final announcementsDataList = <Map<String, dynamic>>[
  {
    kTitleKey: 'Outing schedule for every departement',
    kTimeKey: '5 minutes ago',
    kPinnedKey: true
  },
  {
    kTitleKey: 'Meeting HR Department',
    kTimeKey: 'Yesterday 12:36 PM',
    kPinnedKey: true
  },
  {
    kTitleKey:
        'IT Department need two more talents for UX/UI Designer position',
    kTimeKey: 'Yesterday 11:12 AM',
    kPinnedKey: true
  },
  {
    kTitleKey: 'Meeting TL Department',
    kTimeKey: 'Yesterday 09:00 AM',
    kPinnedKey: true
  },
];

final upcommingSchedulesDataMap = {
  'Priority': [
    {
      kTitleKey: 'Review candidate applications',
      kTimeKey: 'Today - 11.30 AM',
    },
  ],
  'Other': [
    {
      kTitleKey: 'Interview with candidates',
      kTimeKey: 'Today - 10.30 AM',
    },
    {
      kTitleKey: 'Short meeting with product designer from IT Departement',
      kTimeKey: 'Today - 09.15 AM',
    },
    {
      kTitleKey: 'Meeting TL Department',
      kTimeKey: 'Tomorrow - 09:00 AM',
    },
  ],
};
