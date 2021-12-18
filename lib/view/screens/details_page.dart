import 'package:flower_guide/view/widgets/detail_page_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flower_guide/core/constants/imports.dart';

class DetailsPage extends StatelessWidget {
   DetailsPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: MyColors.accent,
      appBar: _buildAppBar(),
      body: Column(
        children: [
          DetailPageCarousel(),
        ],
      ),
    );
  }

  AppBar _buildAppBar() => AppBar();
}
