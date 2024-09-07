import 'package:flutter/material.dart';
import 'package:tuko_app/components/category_item.dart';
import 'package:tuko_app/screens/colors_page.dart';
import 'package:tuko_app/screens/family_members_page.dart';
import 'package:tuko_app/screens/numbers_page.dart';
import 'package:tuko_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          "Tuko",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
            text: "Numbers",
            color: Colors.orange,
          ),
          SizedBox(
            height: 20,
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyMembersPage();
              }));
            },
            text: "FamilyMembers",
            color: Colors.green,
          ),
          SizedBox(
            height: 20,
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorsPage();
              }));
            },
            text: "Colors",
            color: Colors.purple,
          ),
          SizedBox(
            height: 20,
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhrasesPage();
              }));
            },
            text: "Phrases",
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
