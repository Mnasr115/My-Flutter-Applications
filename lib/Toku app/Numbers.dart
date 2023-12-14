import 'package:flutter/material.dart';
import 'package:mahmoud_apps/components/category_Items.dart';
import 'package:mahmoud_apps/models/numbers_models.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});
  final List<ItemModel> numbersList = const [
    ItemModel(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ワン',
        enName: 'one',
      sounds: 'sounds/numbers/number_one_sound.mp3',
    ),
    ItemModel(
        image: 'assets/images/numbers/number_two.png',
        jpName: '両者',
        enName: 'two',
      sounds: 'sounds/numbers/number_two_sound.mp3',
    ),
    ItemModel(
        image: 'assets/images/numbers/number_three.png',
        jpName: '参',
        enName: 'three',
      sounds: 'sounds/numbers/number_three_sound.mp3',
    ),
    ItemModel(
        image: 'assets/images/numbers/number_four.png',
        jpName: '四',
        enName: 'four',
      sounds: 'sounds/numbers/number_four_sound.mp3',
    ),
    ItemModel(
        image: 'assets/images/numbers/number_five.png',
        jpName: '五',
        enName: 'five',
      sounds: 'sounds/numbers/number_five_sound.mp3',
    ),
    ItemModel(
        image: 'assets/images/numbers/number_six.png',
        jpName: '六',
        enName: 'six',
      sounds: 'sounds/numbers/number_six_sound.mp3',
    ),
    ItemModel(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'セブン',
        enName: 'seven',
      sounds: 'sounds/numbers/number_seven_sound.mp3',
    ),
    ItemModel(
        image: 'assets/images/numbers/number_eight.png',
        jpName: '八',
        enName: 'eight',
      sounds: 'sounds/numbers/number_eight_sound.mp3',),
    ItemModel(
        image: 'assets/images/numbers/number_nine.png',
        jpName: '九',
        enName: 'nine',
      sounds: 'sounds/numbers/number_nine_sound.mp3',
    ),
    ItemModel(
        image: 'assets/images/numbers/number_ten.png',
        jpName: '拾',
        enName: 'ten',
      sounds: 'sounds/numbers/number_ten_sound.mp3',
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
          'Numbers',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: numbersList.length,
        itemBuilder: (context , index ){
          return NumbersItem(itemModel: numbersList[index]);
        },
      ),
    );
  }

 /** List <Widget> getList (List<Number> numbers) // دي method  بتعلي return لـ list<widgetوبتاخد الارقام كلها
  {
    List<Widget> itemsList = [] ; // Empty list
    for (int i=0 ; i < numbers.length; i++) // عشان تعدي على كل الليست اللي عندي وكل ما تاخد رقم هتبني بيها widget
  {
    itemsList.add(NumbersItem(number : numbers[i]));
    }
    return itemsList ;
  }*/
}
