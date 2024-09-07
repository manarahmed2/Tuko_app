import 'package:flutter/material.dart';
import 'package:tuko_app/components/category_item_list.dart';
import 'package:tuko_app/models/item_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItemModel> colors = const [
    ItemModel(
        sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: "Burakku",
        enName: 'Black'),
    ItemModel(
        sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'Red'),
    ItemModel(
        sound: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'Yellow'),
    ItemModel(
        sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'Brown'),
    ItemModel(
        sound: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'White'),
    ItemModel(
        sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'Green'),
    ItemModel(
        sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gurē',
        enName: 'Gray'),
    ItemModel(
      sound: 'sounds/colors/dusty_yellow.wav',
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Hokori ppoi ierō',
      enName: 'Dusty Yellow',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return CategoryItemList(
              item: colors[index],
              colorList: Colors.purple,
            );
          }),
    );
  }
}
