import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';
import 'package:tuko_app/components/item_info.dart';
import 'package:tuko_app/models/item_model.dart';

class CategoryItemList extends StatelessWidget {
  CategoryItemList({super.key, required this.item, required this.colorList});
  ItemModel item;
  Color colorList;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorList,
      height: 100,
      child: Row(
        children: [
          Container(
              color: Colors.orange[100], child: Image.asset("${item.image}")),
          Expanded(child: ItemInfo(item: item))
        ],
      ),
    );
  }
}
