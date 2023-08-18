import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/data/questions.dart';

import 'answear_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectedAnswer});
  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _StateQuestionsScreen();
  }
}

class _StateQuestionsScreen extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;

  void nextQuestion(String answer) {
    widget.onSelectedAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });
    print(answer);
  }

  @override
  Widget build(context) {
    final qurrentQuestion = questions[currentQuestionIndex];
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              qurrentQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...qurrentQuestion.getShuffledAnswears().map((e) {
              return AnswearButton(
                answer: e,
                onTap: () {
                  nextQuestion(e);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
