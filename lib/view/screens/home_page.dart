import 'package:flower_guide/core/constants/colors.dart';
import 'package:flower_guide/core/constants/imports.dart';
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
          SizedBox(
            height: getUniqueH(16),
          ),

          // LISTVIEV SECTION
          Flexible(
            child: GridView.builder(
              itemCount: 12,
              padding: EdgeInsets.all(getUniqueW(16)),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.6,
                mainAxisSpacing: getUniqueH(16),
                crossAxisSpacing: getUniqueW(16),
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) => Container(
                // margin: EdgeInsets.symmetric(horizontal: getUniqueW(16)),
                width: 50,
                height: 280,
                decoration: BoxDecoration(
                  color: MyColors.primary,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://source.unsplash.com/random/$index"),
                  ),
                ),
                //alignment: Alignment.bottomCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(MyIcons.favouriteOutlined, color: MyColors.light,),
                    ),
                    Container(
                      height: getUniqueH(114),
                      color: MyColors.accent,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MyBottomBar(),
    );
  }
}
