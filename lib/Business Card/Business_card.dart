import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF2B475E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 112.0,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 110.0,
              backgroundImage:AssetImage('images/meee.jpg'),
            ),
          ),
          Text(
            'MAHMOUD NASR',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28.0,
              fontFamily: 'Pacifico',
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            'Flutter Developer',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white54,
              fontStyle: FontStyle.italic,
            ),
          ),
          Divider(
            color: Colors.white24,
            thickness: 1,
            indent: 40,
            endIndent: 40,
            height: 10,
          ),

          Card(
            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Color(0xFF2B475E),
                size: 24,
              ),
              title:Text(
                '(+20) 1203366304',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ),

          Card(
            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            child: ListTile(
              leading: Icon(
                Icons.mail,
                color: Color(0xFF2B475E),
                size: 24,
              ),
              title: Text(
                'mahmoud@gmail.com',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ),


        ],
      ),

    );
  }

}