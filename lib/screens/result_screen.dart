import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions_list.dart';

class Result extends StatelessWidget {
  const Result(
      {super.key, required this.retryQuiz, required this.selectedAnswers});
  final List<String> selectedAnswers;
  final void Function() retryQuiz;
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                questions[0].question,
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: 15,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 10),
              Text(
                questions[0].answers[0],
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: 15,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 10),
              Text(
                selectedAnswers[0],
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: 15,
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
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
