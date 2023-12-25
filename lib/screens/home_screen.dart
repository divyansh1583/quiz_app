import 'package:flutter/material.dart';
// import 'package:quiz_app/start_quiz.dart';

class HomeScreen extends StatelessWidget {
  final void Function() startquiz;
  const HomeScreen(this.startquiz, {super.key});
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            height: 200,
          ),
          const SizedBox(height: 50),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 50),
          OutlinedButton.icon(
            label: const Text('Start Quiz!'),
            icon: const Icon(Icons.arrow_circle_right_outlined),
            onPressed: () {
              startquiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 138, 35, 198),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ],
      ),
    );
  }
}
