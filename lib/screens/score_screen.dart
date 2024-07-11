import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app/screens/category_screen.dart';
import 'package:quiz_app/screens/home_screen.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(22),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          
          Text("hi Ahmed u finished ur exam & ur score is:",
          style: TextStyle(
              fontSize:22, fontWeight: FontWeight.bold ),),

          Text("19/20",
          style: 
            TextStyle(fontFamily: AutofillHints.telephoneNumber,
              fontSize:22, fontWeight: FontWeight.bold ),),
              
              SizedBox(
                height: 30),
              ElevatedButton(onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute<void>(
                  builder: (BuildContext context) => CategoryScreen()),
                  ModalRoute.withName('//'),); 
              
              }, child: Text("Play again")),


              OutlinedButton(onPressed:() {
               Navigator.pushAndRemoveUntil(
                context, 
                MaterialPageRoute<void>(
                builder: (BuildContext context) => HomeScreen()),
                ModalRoute.withName('//'),);
                
                },child: Text("Exit"),),
              
        ],
       ),
      ),
    );
  }
  
}