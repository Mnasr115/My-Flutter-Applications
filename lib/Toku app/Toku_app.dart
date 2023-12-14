import 'package:flutter/material.dart';
import 'package:mahmoud_apps/Toku%20app/Family_members.dart';
import 'package:mahmoud_apps/Toku%20app/Phrases.dart';
import '../components/category_Items.dart';
import 'Colors.dart';
import 'Numbers.dart';

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: const Color(0xffEF9235),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const Numbers();
                  },
                ),
              );
            },
          ),
          Category(
            text: 'Family Members',
            color: const Color(0xff558B37),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return const FamilyMembers();
                  },),
              );
            },
          ),
          Category(
            text: 'Colors',
            color: const Color(0xff79359F),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context){
                  return const Toku_Color();
                },),
              );
            },
          ),
          Category(
            text: 'Phrases',
            color: const Color(0xff50ADC7),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context){
                  return const Phrases();
                },),
              );
            },
          ),
        ],
      ),
    );
  }
}
