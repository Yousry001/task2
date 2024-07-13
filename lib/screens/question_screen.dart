import 'package:flutter/material.dart';


class QuestionsScreen extends StatefulWidget {
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int _questionsIndex = 0;
  int _totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton( 
          icon: Icon(Icons.logout),
          onPressed: () {},
        ),
        actions: [
          Icon(Icons.message),
          SizedBox(
            width: 12,
          ),
          Icon(
            Icons.notification_add,
          ),
          SizedBox(
            width: 12,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 12,
          )
        ],
        title: Text("Quiz app"),
        // centerTitle: false,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Question number ${_QuestionsIndix+1}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
           Text(
                iqQuestions[_QuestionsIndix]['question'],
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 22,
              ),
              for (int i=0;
              i<(iqQuestions[_QuestionsIndix]['answers'] as List).length;
              i++)
              ElevatedButton(onPressed: () {
                _totalScore = _totalScore+
                iqQuestions[_QuestionsIndix]['answers'][i]
                  ['score' as int];
          if (_QuestionsIndix<(iqQuestions.length-1)){
            setState(() {
              _QuestionsIndix++;
            });
          }else{
          Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const ScoreScreen(
                    totalScore: _totalScore,
                    numberOfQuestions: iqQuestions.length,
                  ), 
                ),
              );   }
      print('ur index is ${_QuestionsIndix}');
      print('ur total score is ${_totalScore}');

              }, 
              child: Text(iqQuestions[_QuestionsIndix]['answers'][i]['ans'])),
            ],
          ),
        ),
      ),
           
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
        ],
      ),
    );
  }
}