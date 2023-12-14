import 'package:flutter/material.dart';
import 'package:mahmoud_apps/components/category_Items.dart';
import 'package:mahmoud_apps/models/numbers_models.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});
  final List<ItemModel> memberList = const [
    ItemModel(
      jpName: '父親',
      enName: 'father',
      image: 'assets/images/family_members/family_father.png',
      sounds: 'sounds/family_members/father.wav',
    ),
    ItemModel(
      jpName: '娘',
      enName: 'daughter',
      image: 'assets/images/family_members/family_daughter.png',
      sounds: 'sounds/family_members/daughter.wav',
    ),
    ItemModel(
      jpName: '祖父',
      enName: 'grand father',
      image: 'assets/images/family_members/family_grandfather.png',
      sounds: 'sounds/family_members/grand father.wav',
    ),
    ItemModel(
      jpName: '母親',
      enName: 'mother',
      image: 'assets/images/family_members/family_mother.png',
      sounds: 'sounds/family_members/mother.wav',
    ),
    ItemModel(
      jpName: '祖母',
      enName: 'grand mother',
      image: 'assets/images/family_members/family_grandmother.png',
      sounds: 'sounds/family_members/grand mother.wav',
    ),
    ItemModel(
      jpName: '兄',
      enName: 'older brother',
      image: 'assets/images/family_members/family_older_brother.png',
      sounds: 'sounds/family_members/older bother.wav',
    ),
    ItemModel(
      jpName: '姉',
      enName: 'older sister',
      image: 'assets/images/family_members/family_older_sister.png',
      sounds: 'sounds/family_members/older sister.wav',
    ),
    ItemModel(
      jpName: '息子',
      enName: 'son',
      image: 'assets/images/family_members/family_son.png',
      sounds: 'sounds/family_members/son.wav',
    ),
    ItemModel(
      jpName: '弟',
      enName: 'younger brother',
      image: 'assets/images/family_members/family_younger_brother.png',
      sounds: 'sounds/family_members/younger brohter.wav',
    ),
    ItemModel(
      jpName: '妹',
      enName: 'younger sister',
      image: 'assets/images/family_members/family_younger_sister.png',
      sounds: 'sounds/family_members/younger sister.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Family Members',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: memberList.length,
        itemBuilder: (context, index) {
          return FamilyMembersItem(itemModel: memberList[index]);
        },
      ),
    );
  }
}
