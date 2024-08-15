import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

BottomNavigationBarItem BottomItem(
    String selected, String unSelected, String Label, bool isSelected) {
  return BottomNavigationBarItem(
    icon: SizedBox(
      width: 22,
      height: 22,
      child: isSelected
          ? SvgPicture.asset(
              selected,
              colorFilter: ColorFilter.mode(
                  const Color.fromRGBO(44, 49, 49, 1), BlendMode.srcIn),
            )
          : SvgPicture.asset(
              unSelected,
              colorFilter:
                  ColorFilter.mode(Colors.grey.shade800, BlendMode.srcIn),
            ),
    ),
    label: Label,
  );
}
