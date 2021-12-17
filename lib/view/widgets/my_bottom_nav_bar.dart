import 'package:flower_guide/core/constants/colors.dart';
import 'package:flower_guide/provider/bottom_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items:  [
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/home.svg', color: MyColors.primary,), label: "Home"),
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/library.svg', color: MyColors.primary,), label: "Library"),
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/favourite_outlined.svg', color: MyColors.primary, height: 35.0, ), label: "Favourite"),

      ],
      onTap: (index){
        context.read<BottomBarProvider>().changeIndex(index);
      },
      currentIndex: context.watch<BottomBarProvider>().index,
    );
  }
}