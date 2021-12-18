
import 'package:flower_guide/view/widgets/detail_footer.dart';
import 'package:flutter/material.dart';
import 'package:flower_guide/core/constants/imports.dart';

class DetailsPage extends StatelessWidget {
   DetailsPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: Column(
        children: [
          DetailPageCarousel(),
          DetailsFooter(),
        ],
      ),
    );
  }

  AppBar _buildAppBar() => AppBar();


}
