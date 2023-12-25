import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions_list.dart';
import 'package:quiz_app/screens/correct_answers.dart';

class Result extends StatelessWidget {
  const Result(
      {super.key, required this.retryQuiz, required this.selectedAnswers});
  final List<String> selectedAnswers;
  final void Function() retryQuiz;

  List<Map<String, Object>> makeSummary() {
    List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'index': i+1,
        'question': questions[i],
        'answer': questions[i].answers[0],
        'selected_answer': selectedAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            'Result Screen',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 50),
          CorrectAnswers(summary: makeSummary()),
          const SizedBox(height: 50),
          ElevatedButton.icon(
            onPressed: retryQuiz,
            label: const Text('Retry Quiz'),
            icon: const Icon(Icons.restart_alt_sharp),
          )
        ],
      ),
    );
  }
}
