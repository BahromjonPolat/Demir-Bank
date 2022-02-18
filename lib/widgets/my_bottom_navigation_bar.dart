import 'package:demirbank/core/constants/app_colors.dart';
import 'package:demirbank/core/constants/app_icons.dart';
import 'package:demirbank/core/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBottomNavBar extends StatelessWidget {
  final int currentIndex;

  const MyBottomNavBar({Key? key, required this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: _items());
  }

  List<BottomNavigationBarItem> _items() => [
        _setItem(AppIcons.home, AppStrings.home, 0),
        _setItem(AppIcons.payment, AppStrings.payment, 1),
        _setItem(AppIcons.transactions, AppStrings.home, 2),
        _setItem(AppIcons.profile, AppStrings.home, 3),
      ];

  BottomNavigationBarItem _setItem(String assetIcon, String label, int index) =>
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          assetIcon,
          color: currentIndex == index ? AppColors.red : AppColors.grey,
        ),
        label: label,
      );
}
