import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/buttons/answer_button.dart';
import 'package:quiz_app/data/questions_list.dart';

class Questions extends StatefulWidget {
  const Questions({super.key, required this.resultScreen});
  final void Function(List<String> selectedAnswers) resultScreen;
  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  var n = questions.length;
  var currentIndex = 0;
  List<String> correctAnswers = [];
  void nextQuestion(String answer) {
    correctAnswers.add(answer);
    setState(() {
      currentIndex++;
    });
    if (currentIndex == n) {
      widget.resultScreen(correctAnswers);
    }
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentIndex];
    return Center(
      child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  currentQuestion.question,
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                ...currentQuestion.shuffle().map((shuffle) {
                  return AnswerButton(
                    answerText: shuffle,
                    onTap: () {
                      nextQuestion(shuffle);
                    },
                  );
                }),
              ])),
    );
  }
}
