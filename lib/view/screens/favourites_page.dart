import 'package:flutter/material.dart';
import 'package:flower_guide/core/constants/imports.dart';

class MyFavouritesPage extends StatelessWidget {
  const MyFavouritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
        itemCount: 45,
        crossAxisCount: 4,
        padding: EdgeInsets.symmetric(horizontal: getUniqueW(19.0)),
        mainAxisSpacing: getUniqueW(16.0),
        crossAxisSpacing: getUniqueW(18.48),
        itemBuilder: (context, index) {
          return StaggeredItemCard(index);
        },
        staggeredTileBuilder: (index) => const StaggeredTile.fit(2));
  }
}
