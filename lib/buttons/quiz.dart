import 'package:flutter/material.dart';
import 'package:quiz_app/screens/question_screen.dart';
import 'package:quiz_app/screens/result_screen.dart';
import '../screens/home_screen.dart';

class StartQuiz extends StatefulWidget {
  const StartQuiz({super.key});
  @override
  State<StartQuiz> createState() {
    return _StartQuizState();
  }
}

class _StartQuizState extends State<StartQuiz> {
  var currentScreen = 'home_screen';
  List<String> selectedAnswers = [];
  void startquiz() {
    setState(() {
      currentScreen = 'questions_screen';
    });
  }

  void resultScreen(List<String> answers) {
    selectedAnswers = answers;
    setState(() {
      currentScreen = 'result_screen';
    });
  }

  void restartQuiz() {
    setState(() {
      currentScreen = 'home_screen';
    });
  }

  Widget screen(String currentScreen) {
    if (currentScreen == 'home_screen') {
      return HomeScreen(startquiz);
    } else if (currentScreen == 'questions_screen') {
      return Questions(resultScreen: resultScreen);
    } else {
      return Result(
        retryQuiz: restartQuiz,
        selectedAnswers: selectedAnswers,
      );
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.purpleAccent],
            ),
          ),
          child: screen(currentScreen),
        ),
      ),
    );
  }
}
