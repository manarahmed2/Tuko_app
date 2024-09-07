import 'package:flutter/material.dart';
import 'package:tuko_app/components/item_info.dart';

import 'package:tuko_app/components/phrase.dart';
import 'package:tuko_app/models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  final List<ItemModel> phrasesList = const [
    ItemModel(
        sound: 'sounds/phrases/what_is_your_name.wav',
        jpName: 'Anata no namae wa nandesuka?',
        enName: 'What Is Your Name?'),
    ItemModel(
        sound: 'sounds/phrases/are_you_coming.wav',
        jpName: 'Kimasu ka?',
        enName: 'Are You Coming'),
    ItemModel(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
        jpName: 'Go kibun wa ikagadesu ka?',
        enName: 'How Are You Feeling?'),
    ItemModel(
        sound: 'sounds/phrases/i_love_programming.wav',
        jpName: 'Puroguramingu ga daisuki',
        enName: 'I Love Programming'),
    ItemModel(
        sound: 'sounds/phrases/programming_is_easy.wav',
        jpName: 'Puroguramingu wa kantandesu',
        enName: 'Programming Is Easy'),
    ItemModel(
        sound: 'sounds/phrases/where_are_you_going.wav',
        jpName: 'Doko ni iku no?',
        enName: 'Where are You Going?'),
    ItemModel(
        sound: 'sounds/phrases/yes_im_coming.wav',
        jpName: 'Hai, ikimasu',
        enName: 'Yes Iam Coming'),
    ItemModel(
        sound: 'sounds/phrases/i_love_anime.wav',
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'I Love Anime'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Phrases',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            color: const Color(0xff50ADC7),
            child: ItemInfo(item: phrasesList[index]),
          );
        },
      ),
    );
  }
}
  // List<Widget> getList(List<Number> numbers) {
  //   List<Widget> itemsList = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     itemsList.add(
  //       ListItem(
  //         number: numbers[i],
  //       ),
  //     );
  //   }

  //   return itemsList;
  // }

