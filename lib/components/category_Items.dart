import 'package:flutter/material.dart';
import 'package:mahmoud_apps/models/numbers_models.dart';
import 'package:audioplayers/audioplayers.dart';



class Category extends StatelessWidget {
  Category({this.text, this.color, this.onTap});
  String? text;
  Color? color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 24),
        height: 65,
        width: double.infinity,
        color: color,
        child: Text(
          text!,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}

class NumbersItem extends StatelessWidget {
  const NumbersItem({required this.itemModel});
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color(0xffEF9235),
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image.asset(itemModel.image!),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  itemModel.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  itemModel.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(itemModel.sounds));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class FamilyMembersItem extends StatelessWidget {
  const FamilyMembersItem({super.key, required this.itemModel});
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color(0xff558B37),
      child: Row(
        children: [
          Container(
              color: const Color(0xffFFF6DC),
              child: Image.asset(itemModel.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  itemModel.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  itemModel.enName,
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
            onPressed: () {
              final player = AudioPlayer();
              player.play(
                AssetSource(itemModel.sounds),
              );
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class ColorsItem extends StatelessWidget {
  const ColorsItem({required this.itemModel});
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color(0xff79359F),
      child: Row(
        children: [
         Container(
             color: const Color(0xffFFF6DC),
             child: Image.asset(itemModel.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  itemModel.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  itemModel.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(flex: 1,),
          IconButton(
            onPressed: (){
              ///play sound
              final player = AudioPlayer();
              player.play(AssetSource(itemModel.sounds),);
            },
            icon: const Icon (
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.itemModel});
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color(0xff50ADC7),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  itemModel.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  itemModel.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(flex: 1,),
          IconButton (
            onPressed: (){
              final player = AudioPlayer();
              player.play(AssetSource(itemModel.sounds),);
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}


