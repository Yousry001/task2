import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/screens/login_screen.dart';
import 'package:quiz_app/widgets/Catrgory_card.dart';

// ignore: must_be_immutable
class CategoryScreen extends StatelessWidget {
   CategoryScreen ({super.key});

  List data=[
    {'name': 'IQ quiez','color':  Color.fromARGB(255, 188, 80, 208)},
    {'name': 'Sports quiez','color': const Color.fromARGB(255, 16, 193, 45)},
    {'name': 'History quiez','color': const Color.fromARGB(255, 75, 42, 8)},
    {'name': 'General quiez','color': const Color.fromARGB(255, 19, 141, 202)},
  ];
    @override
    Widget build(context) { 
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
            for(int i=0; i<data.length; i++)
            CatrgoryCard(
              Quiz: data[i]['name'],
              quizColor: data[i]['color']
             
            )
        ],
      )
    );
  }  
} 