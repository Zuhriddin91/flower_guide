import 'package:flower_guide/core/constants/imports.dart';
import 'package:flutter/material.dart';

class MyCategoryCard extends StatelessWidget {
  const MyCategoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: NetworkImage("https://source.unsplash.com/random"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(
          getUniqueW(16.0),
        ),
        color: MyColors.accent,
        boxShadow: [
          BoxShadow(
              color: MyColors.dark.withOpacity(0.15),
              blurRadius: 1.0,
              spreadRadius: 1.0)
        ],
      ),
      height: getUniqueH(152.0),
      width: getUniqueW(156.0),
      child: Container(
        padding: EdgeInsets.only(
          top: getUniqueH(10.0),
          left: getUniqueW(16.0),
        ),
        height: getUniqueH(42.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: MyColors.light,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(
              getUniqueW(16.0),
            ),
            bottomRight: Radius.circular(
              getUniqueW(16.0),
            ),
          ),
        ),
        child: Text(
          "Succulent",
          style: TextStyle(
            fontSize: getUniqueW(16.0),
            fontWeight: FontWeight.w400,
            letterSpacing: getUniqueW(-2),
            color: MyColors.dark,
          ),
        ),
      ),
    );
  }
}
