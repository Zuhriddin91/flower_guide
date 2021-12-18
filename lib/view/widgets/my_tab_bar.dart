import 'package:flower_guide/core/constants/imports.dart';
import 'package:flower_guide/provider/tab_bar_provider.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int activeTab = Provider.of<TabBarProvider>(context).index;

    return Container(
      padding: EdgeInsets.all(getUniqueW(2)),
      width: getUniqueW(329),
      height: getUniqueH(52),
      decoration: BoxDecoration(
        color: MyColors.accent,
        borderRadius: BorderRadius.circular(
          getUniqueW(16),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // FIRST TAB SECTION
          Container(
            width: getUniqueW(107),
            height: getUniqueH(48),
            child: TextButton(
              child: Text(
                "Tur",
                style: TextStyle(
                    color: activeTab == 0 ? MyColors.light : MyColors.primary,
                    fontSize: getUniqueW(16),
                    fontWeight: FontWeight.w600),
              ),
              onPressed: () {
                Provider.of<TabBarProvider>(context, listen: false)
                    .changeTab(0);
              },
            ),
            decoration: BoxDecoration(
              color: activeTab == 0 ? MyColors.primary : MyColors.accent,
              borderRadius: BorderRadius.circular(
                getUniqueW(16),
              ),
            ),
          ),

          // SECOND TAB SECTION
          Container(
            width: getUniqueW(107),
            height: getUniqueH(48),
            child: TextButton(
              child: Text(
                "Toifa",
                style: TextStyle(
                    color: activeTab == 1 ? MyColors.light : MyColors.primary,
                    fontSize: getUniqueW(16),
                    fontWeight: FontWeight.w600),
              ),
              onPressed: () {
                Provider.of<TabBarProvider>(context, listen: false)
                    .changeTab(1);
              },
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                getUniqueW(16),
              ),
              color: activeTab == 1 ? MyColors.primary : MyColors.accent,
            ),
          ),

          // THIRD TAB SECTION
          Container(
            width: getUniqueW(107),
            height: getUniqueH(48),
            child: TextButton(
              child: Text(
                "Gull",
                style: TextStyle(
                    color: activeTab == 2 ? MyColors.light : MyColors.primary,
                    fontSize: getUniqueW(16),
                    fontWeight: FontWeight.w600),
              ),
              onPressed: () {
                Provider.of<TabBarProvider>(context, listen: false)
                    .changeTab(2);
              },
            ),
            decoration: BoxDecoration(
              color: activeTab == 2 ? MyColors.primary : MyColors.accent,
              borderRadius: BorderRadius.circular(
                getUniqueW(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
