// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/screens/login_screen.dart';
import 'package:quiz_app/screens/question_screen.dart';

class CatrgoryCard extends StatelessWidget {
  // ignore: non_constant_identifier_names
  

  const CatrgoryCard({ required this.Quiz, required this.quizColor ,super.key});
    
    final String Quiz;
    final Color quizColor;
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: 
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => QuestionsScreen(),
              ),
            ),
      child:Container(
        color: quizColor,
        child: Center(child: Text( Quiz, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
      )
    ),),);
      }
    }