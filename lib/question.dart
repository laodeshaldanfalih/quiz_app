import 'package:flutter/material.dart';
import 'package:quizz_app/answear_button.dart';

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("What are the main building blocks of Flutter UIs?"),
          const SizedBox(height: 30),
          Column(
            children: [
              AnswearButton(
                answer: "Answer 1",
                onTap: () => {},
              ),
              AnswearButton(
                answer: "Answer 2",
                onTap: () => {},
              ),
              AnswearButton(
                answer: "Answer 3",
                onTap: () => {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
