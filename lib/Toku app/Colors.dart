import 'package:flutter/material.dart';
import 'package:mahmoud_apps/components/category_Items.dart';
import 'package:mahmoud_apps/models/numbers_models.dart';


class Toku_Color extends StatelessWidget {
  const Toku_Color({super.key});

  final List<ItemModel> colorList = const [
    ItemModel(
      jpName: '黒',
      enName: 'black',
      image: 'assets/images/colors/color_black.png',
      sounds: 'sounds/colors/black.wav',
    ),
    ItemModel(
      jpName: '茶色',
      enName: 'brown',
      image: 'assets/images/colors/color_brown.png',
      sounds: 'sounds/colors/brown.wav',
    ),
    ItemModel(
      jpName: 'ダスティイエロー',
      enName: 'dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
      sounds: 'sounds/colors/dusty yellow.wav',
    ),
    ItemModel(
      jpName: 'グレー',
      enName: 'gray',
      image: 'assets/images/colors/color_gray.png',
      sounds: 'sounds/colors/gray.wav',
    ),
    ItemModel(
      jpName: '緑',
      enName: 'green',
      image: 'assets/images/colors/color_green.png',
      sounds: 'sounds/colors/green.wav',
    ),
    ItemModel(
      jpName: '赤',
      enName: 'red',
      image: 'assets/images/colors/color_red.png',
      sounds: 'sounds/colors/red.wav',
    ),
    ItemModel(
      jpName: '黒',
      enName: 'black',
      image: 'assets/images/colors/color_black.png',
      sounds: 'sounds/colors/black.wav',
    ),
    ItemModel(
      jpName: '白',
      enName: 'white',
      image: 'assets/images/colors/color_white.png',
      sounds: 'sounds/colors/white.wav',
    ),
    ItemModel(
      jpName: '黄色',
      enName: 'yellow',
      image: 'assets/images/colors/yellow.png',
      sounds: 'sounds/colors/yellow.wav',
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
          'Colors',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: colorList.length,
        itemBuilder: (context, index) {
          return ColorsItem(
            itemModel: colorList[index],
          );
        },
      ),
    );
  }
}
