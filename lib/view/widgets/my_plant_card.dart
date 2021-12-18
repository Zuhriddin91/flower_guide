import 'package:flower_guide/core/constants/icons.dart';
import 'package:flower_guide/core/constants/imports.dart';
import 'package:flower_guide/provider/plant_card_provider.dart';
import 'package:flutter/material.dart';

class MyPlantCard extends StatelessWidget {
  final int index;
  const MyPlantCard(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isFavourite = Provider.of<PlantCardProvider>(context, listen: false).isFavourite;

    return Container(
      width: 50,
      height: 280,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: MyColors.dark.withOpacity(0.15),
              blurRadius: 1.0,
              spreadRadius: 1.0)
        ],
        color: MyColors.accent,
        borderRadius: BorderRadius.circular(getUniqueW(16)),
        image:  DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage("https://source.unsplash.com/random/$index"),
        ),
      ),
      //alignment: Alignment.bottomCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              context.read<PlantCardProvider>().changeFavourite(!Provider.of<PlantCardProvider>(context, listen: false).isFavourite);
            },
            icon: SvgPicture.asset(
              Provider.of<PlantCardProvider>(context, listen: false).isFavourite
                  ? MyIcons.favouriteActive
                  : MyIcons.favouriteOutlined,
              color: Provider.of<PlantCardProvider>(context, listen: false).isFavourite ? MyColors.error : MyColors.light,
            ),
          ),
          Container(
            width: double.infinity,
            height: getUniqueH(100),
            padding: EdgeInsets.symmetric(horizontal: getUniqueW(8)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tur nomi ",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: getUniqueW(14), color: MyColors.subtitleText),
                ),
                Text(
                  "Gul nomi ",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: getUniqueW(16), fontWeight: FontWeight.w600),
                ),
                Text(
                  "Toifa nomi Toifa nomi ",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: getUniqueW(14),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: MyColors.accent,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(
                  getUniqueW(16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


