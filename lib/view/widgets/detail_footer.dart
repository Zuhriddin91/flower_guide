import 'package:flutter/material.dart';
import 'package:flower_guide/core/constants/imports.dart';

class DetailsFooter extends StatelessWidget {
  const DetailsFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getUniqueH(346.0),
      width: getUniqueW(375.0),
      padding: EdgeInsets.symmetric(horizontal: getUniqueW(24.0)),
      child: Column(
        children: [
          _showButtons(),
        ],
      ),
    );
  }

  Row _showButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _setMenuButton(MyIcons.leaf, 'My Plants'),
        _setMenuButton(MyIcons.dropLed, 'How to care'),
        _setMenuButton(MyIcons.messageCircle, 'Reviews'),
        _setMenuButton(MyIcons.favouriteOutlined, 'Saved'),
      ],
    );
  }

  _setMenuButton(
    String icon,
    String label,
  ) =>
      Column(
        children: [
          Container(
            height: getUniqueH(56.0),
            width: getUniqueW(56.0),
            child: SvgPicture.asset(
              icon,
              height: getUniqueH(20.0),
              width: getUniqueW(20.0),
              fit: BoxFit.none,
              color: MyColors.dark,
            ),
            decoration: BoxDecoration(
              borderRadius: _buildRadius(16.0),
              color: MyColors.grey,
            ),
          ),
          SizedBox(height: getUniqueH(9.0)),
          Text(
            label,
            style: TextStyle(
              fontSize: getUniqueW(13.0),
              color: MyColors.dark
            ),
          ),
        ],
      );

  BorderRadius _buildRadius(double radius) =>
      BorderRadius.circular(getUniqueW(radius));
}
