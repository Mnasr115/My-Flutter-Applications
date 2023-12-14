import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
 
  Widget build(BuildContext context) {
 return Scaffold(
   backgroundColor: Color(0xFFD2BCD5),
   body: Center(
     child: Image(
       image: AssetImage('assets/images/birthCard.png'),
     ),
   ),
 );
  }

}