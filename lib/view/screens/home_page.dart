import 'package:flower_guide/core/constants/size_config.dart';
import 'package:flower_guide/view/widgets/my_bottom_nav_bar.dart';
import 'package:flower_guide/view/widgets/my_tab_bar.dart';
import 'package:flower_guide/view/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
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
          SizedBox(height: getUniqueH(16),),

          // LISTVIEV SECTION
          Flexible(
            child: GridView.builder(
              itemCount: 12,
              padding: EdgeInsets.all(getUniqueW(16)),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: getUniqueH(16) ,
                crossAxisSpacing: getUniqueW(16),
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) => Container(
               // margin: EdgeInsets.symmetric(horizontal: getUniqueW(16)),
                width: 100,
                height: 100,
                color: Colors.pink,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MyBottomBar(),
    );
  }
}
