import 'package:flower_guide/view/widgets/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flower_guide/core/constants/imports.dart';

class MyStaggeredItemCard extends StatelessWidget {
  final int index;

  const MyStaggeredItemCard(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(getUniqueW(16.0)),
          border: Border.all(color: MyColors.innerBorder)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _showImage(),
          _footer(),
        ],
      ),
    );
  }

  ClipRRect _showImage() => ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: _buildRadius(),
          topLeft: _buildRadius(),
        ),
        child: Stack(
          children: [
            Image.network(
              'https://source.unsplash.com/random/$index',
              fit: BoxFit.cover,
            ),
            Positioned(
                top: getUniqueH(16.0),
                right: getUniqueW(14.55),
                child: SvgPicture.asset(MyIcons.favouriteActive))
          ],
        ),
      );

  Container _footer() => Container(
        padding: EdgeInsets.symmetric(
          horizontal: getUniqueW(12.0),
          vertical: getUniqueH(12.0),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: _buildRadius(),
            bottomRight: _buildRadius(),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyTextWidget('Houseplant', size: 13.0, maxLines: 2,),
            SizedBox(height: getUniqueH(4.0)),
            MyTextWidget('Monsterav ', size: 16.0, color: MyColors.dark, maxLines: 2,),
            SizedBox(height: getUniqueH(4.0)),
            MyTextWidget('Monsteras family ', size: 13.0,maxLines: 2,),
          ],
        ),
      );

  Radius _buildRadius() => Radius.circular(getUniqueW(15.0));
}
