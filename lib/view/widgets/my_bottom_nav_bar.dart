import 'package:flower_guide/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items:  [
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/home.svg', color: MyColors.primary,), label: ""),
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/library.svg', color: MyColors.primary,), label: ""),
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/favourite_outlined.svg', color: MyColors.primary,), label: ""),

      ],
      onTap: (index){},
      currentIndex: 0,
    );
  }
}