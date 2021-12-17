import 'package:flower_guide/core/constants/size_config.dart';
import 'package:flower_guide/view/widgets/my_bottom_nav_bar.dart';
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
              getUniqueW(16),
              getUniqueH(100),
              getUniqueW(16),
              getUniqueH(30),
            ),
            child:const MyTextField()
          )
        ],
      ),
      bottomNavigationBar: const MyBottomBar(),
    );
  }
}
