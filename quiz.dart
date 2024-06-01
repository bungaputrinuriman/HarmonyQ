import 'dart:convert';
import 'package:flutter/material.dart';

import 'al-quran.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Map<String, dynamic>> questions = [];
  int currentQuestionIndex = 0;
  int? selectedOptionIndex;
  int score = 0;

  @override
  void initState() {
    super.initState();
    loadQuizData();
  }

  Future<void> loadQuizData() async {
    final String quizData = await DefaultAssetBundle.of(context)
        .loadString('assets/json/data.json'); // Replace with your JSON file path
    final jsonData = json.decode(quizData);
    setState(() {
      questions = List<Map<String, dynamic>>.from(jsonData['pertanyaan']);
    });
  }

  void checkAnswer(int optionIndex) {
    if (selectedOptionIndex != null) {
      return; // If already selected, no need to process further
    }

    final correctAnswer = questions[currentQuestionIndex]['jawaban'];
    final selectedAnswer = questions[currentQuestionIndex]['opsi'][optionIndex];

    bool isCorrect = selectedAnswer == correctAnswer;

    setState(() {
      selectedOptionIndex = optionIndex; // Save the selected index
      if (isCorrect) {
        score++;
      }
    });
  }

  void nextQuestion() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
        selectedOptionIndex = null; // Reset selection when moving to the next question
      } else {
        // Quiz is finished, display the result or do something appropriate
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Semangat menghafalnya !',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),

                Text(
                  'Your Score: $score / ${questions.length}',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => AlquranPage("Al-Qur'an"),
                    ),
                  );
                  },
                child: Text('Back'),
              ),
            ],
          ),
        );
      }
    });
  }
  Column buildAnswerChoices() {
    final answerOptions = questions[currentQuestionIndex]['opsi'];
    return Column(
      children: List<Widget>.generate(answerOptions.length, (index) {
        final isCorrectAnswer = questions[currentQuestionIndex]['jawaban'] == answerOptions[index];
        final isUserSelectedAnswer = selectedOptionIndex == index;

        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: InkWell(
            onTap: () {
              checkAnswer(index);
            },
            child: Container(
              width: 177,
              height: 61,
              padding: EdgeInsets.fromLTRB(16, 16, 17, 15),
              margin: EdgeInsets.only(left: 28, right: 28),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: isUserSelectedAnswer
                    ? isCorrectAnswer ? Colors.green : Colors.red
                    : Color(0xFF242A30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    answerOptions[index] as String,
                    style: TextStyle(
                      color: isUserSelectedAnswer ? Colors.white : Colors.white,
                    ),
                  ),
                  if (isUserSelectedAnswer)
                    Icon(
                      isCorrectAnswer ? Icons.check : Icons.close,
                      color: Colors.white,
                    ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GAMES"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Color(0xFF631ED0),
      ),
        body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // You may want to use "center" if you want the button centered vertically
            children: <Widget>[
            Container(
              width: 374,
              height: 55,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [Color(0xFF2F69F6), Color(0xFF631ED0)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Center(
                child: Text(
                  "Games : MHQ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            // Question container
            Container(
              width: 374,
              height: 93,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF242A30),
              ),
              child: Center(
                child: Text(
                  questions[currentQuestionIndex]['pertanyaan'] as String,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            // Answer Choices
            buildAnswerChoices(),
            // Next Question Button
            ElevatedButton(
              onPressed: () {
                nextQuestion();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent, // Atur warna latar belakang tombol ke transparan
                onPrimary: Colors.transparent, // Atur warna teks tombol ke transparan
                elevation: 0, // Atur elevasi tombol ke 0
              ),
              child: Container(
                width: 174,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF2F69F6),
                      Color(0xFF631ED0),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
