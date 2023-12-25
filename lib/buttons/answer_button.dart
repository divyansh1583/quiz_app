import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({required this.answerText,required this.onTap, super.key});
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            maximumSize: Size.infinite,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            backgroundColor: const Color.fromARGB(255, 127, 10, 140),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: onTap,
        // style: ElevatedButton.styleFrom(foregroundColor: Colors.white),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
          style: GoogleFonts.openSans(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
