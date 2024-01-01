import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions_list.dart';
import 'package:quiz_app/screens/correct_answers.dart';

class Result extends StatelessWidget {
  const Result(
      {super.key, required this.retryQuiz, required this.selectedAnswers});
  final List<String> selectedAnswers;
  final void Function() retryQuiz;

  List<Map<String, Object>> makeSummary() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add(
        {
          'index': i,
          'question': questions[i].question,
          'answer': questions[i].answers[0],
          'selected_answer': selectedAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = makeSummary();
    final totalquestions = questions.length;
    final correctanswers = summaryData
        .where((data) => data['answer'] == data['selected_answer'])
        .length;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Correct Anwered Questions: $correctanswers/$totalquestions!!',
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 50),
          CorrectAnswers(summaryData),
          const SizedBox(height: 50),
          ElevatedButton.icon(
              onPressed: retryQuiz,
              label: const Text('Retry Quiz'),
              icon: const Icon(Icons.refresh_sharp),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purpleAccent))
        ],
      ),
    );
  }
}
