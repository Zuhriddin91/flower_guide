import 'package:flutter/material.dart';
import 'package:flower_guide/core/constants/imports.dart';


class HomePageBody extends StatelessWidget {
  const HomePageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SEARCH SECTION
        Padding(
            padding: EdgeInsets.fromLTRB(
              getUniqueW(24),
              getUniqueH(100),
              getUniqueW(24),
              getUniqueH(16),
            ),
            child: const MyTextField()),

        // TABBAR SECTION
        const MyTabBar(),
        SizedBox(
          height: getUniqueH(16),
        ),

        // LISTVIEW SECTION
        Flexible(
          child: Provider.of<TabBarProvider>(context).index == 2
              ? const MyPlantGrid()
              : const MyCategoryGrid(),
        ),
      ],
    );
  }
}
