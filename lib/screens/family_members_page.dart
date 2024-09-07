import 'package:flutter/material.dart';
import 'package:tuko_app/components/category_item_list.dart';

import 'package:tuko_app/models/item_model.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<ItemModel> members = const [
    ItemModel(
      sound: "sounds/family/father.wav",
      jpName: 'Chichioya',
      enName: 'father',
      image: 'assets/images/family_members/dad.png',
    ),
    ItemModel(
      sound: "sounds/family/mother.wav",
      jpName: 'Hahaoya',
      enName: 'mother',
      image: 'assets/images/family_members/mom.png',
    ),
    ItemModel(
      sound: "sounds/family/son.wav",
      jpName: 'Musuko',
      enName: 'son',
      image: 'assets/images/family_members/son.png',
    ),
    ItemModel(
      sound: "sounds/family/daughter.wav",
      jpName: 'Musume',
      enName: 'daughter',
      image: 'assets/images/family_members/daughter (1).png',
    ),
    ItemModel(
      sound: "sounds/family/older_bother.wav",
      jpName: 'Nīsan',
      enName: 'older brother',
      image: 'assets/images/family_members/old-brother.png',
    ),
    ItemModel(
      sound: "sounds/family/older_sister.wav",
      jpName: 'Ane',
      enName: 'older sister',
      image: 'assets/images/family_members/older sister.png',
    ),
    ItemModel(
      sound: "sounds/family/younger_brohter.wav",
      jpName: 'Otōto',
      enName: 'younger brother',
      image: 'assets/images/family_members/younger brother.png',
    ),
    ItemModel(
      sound: "sounds/family/younger_sister.wav",
      jpName: 'Imōto',
      enName: 'younger sister',
      image: 'assets/images/family_members/y-sister.png',
    ),
    ItemModel(
      sound: "sounds/family/grand_father.wav",
      jpName: 'Ojīsan',
      enName: 'grandfather',
      image: 'assets/images/family_members/grandfather.png',
    ),
    ItemModel(
        sound: "sounds/family/grand_mother.wav",
        image: "assets/images/family_members/old-woman.png",
        jpName: "Sobo",
        enName: "grandmother"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'FamilyMembers',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color(0xff46322B),
        ),
        body: ListView.builder(
            itemCount: members.length,
            itemBuilder: (context, index) {
              return CategoryItemList(
                item: members[index],
                colorList: Colors.green,
              );
            }));
  }
}
