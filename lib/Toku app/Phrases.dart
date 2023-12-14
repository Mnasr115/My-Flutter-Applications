import 'package:flutter/material.dart';
import 'package:mahmoud_apps/components/category_Items.dart';
import 'package:mahmoud_apps/models/numbers_models.dart';

class Phrases extends StatelessWidget {
  const Phrases({super.key});
  final List<ItemModel> phrasesList = const [
    ItemModel(
      jpName: '忘れずに購読してください',
      enName: "Don't forget to subscribe",
      sounds: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    ItemModel(
      jpName: '来ますか？',
      enName: "Are you coming?",
      sounds: 'sounds/phrases/are_you_coming.wav',
    ),
    ItemModel(
      jpName: '気分はどうですか？',
      enName: "How are you feeling?",
      sounds: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    ItemModel(
      jpName: '私はアニメが大好きです',
      enName: 'I love anime',
      sounds: 'sounds/phrases/i_love_anime.wav',
    ),
    ItemModel(
      jpName: '私はプログラミングが大好きです',
      enName: 'I love programming',
      sounds: 'sounds/phrases/i_love_programming.wav',
    ),
    ItemModel(
      jpName: "プログラミングは簡単です",
      enName: "Programming is easy",
      sounds: 'sounds/phrases/programming_is_easy.wav',
    ),
    ItemModel(
      jpName: "あなたの名前は何ですか？",
      enName: 'What is your name ?',
      sounds: 'sounds/phrases/what_is_your_name.wav',
    ),
    ItemModel(
      jpName: 'どこに行くのですか？',
      enName: 'Where are you going',
      sounds: 'sounds/phrases/where_are_you_going.wav',
    ),
    ItemModel(
      jpName: 'はい、来ます',
      enName: 'Yes, i am coming',
      sounds: 'sounds/phrases/yes_im_coming.wav',
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
          'Phrases',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            itemModel: phrasesList[index],
          );
        },
      ),
    );
  }
}
