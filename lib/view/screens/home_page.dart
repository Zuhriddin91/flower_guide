import 'package:flower_guide/core/constants/imports.dart';
import 'package:flower_guide/core/constants/size_config.dart';
import 'package:flower_guide/provider/tab_bar_provider.dart';
import 'package:flower_guide/view/widgets/my_bottom_nav_bar.dart';
import 'package:flower_guide/view/widgets/my_category_grid.dart';
import 'package:flower_guide/view/widgets/my_plant_card.dart';
import 'package:flower_guide/view/widgets/my_plant_grid.dart';
import 'package:flower_guide/view/widgets/my_tab_bar.dart';
import 'package:flower_guide/view/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
            child: 
            Provider.of<TabBarProvider>(context).index == 2 ?
                const MyPlantGrid() : const MyCategoryGrid() ,
            
            
          ),
        ],
      ),
      bottomNavigationBar: const MyBottomBar(),
    );
  }
}
