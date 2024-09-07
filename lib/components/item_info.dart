import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuko_app/models/item_model.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    super.key,
    required this.item,
  });
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.jpName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Text(
                item.enName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        IconButton(
            color: Colors.white,
            iconSize: 32,
            onPressed: () {
              item.playSound();
            },
            icon: const Icon(
              Icons.play_arrow,
            )),
      ],
    );
  }
}
