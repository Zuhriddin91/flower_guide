import 'package:flower_guide/core/constants/colors.dart';
import 'package:flower_guide/view/widgets/my_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Hello World !", style: TextStyle(
          color: MyColors.primary,
          fontSize: 24.0,
          fontWeight: FontWeight.w600,
        ),),
      ),
      bottomNavigationBar: MyBottomBar(),
    );
  }
}
