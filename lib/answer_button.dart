import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, this.selectAnswer, {super.key});
  final String answerText;
  final void Function(String answer) selectAnswer;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: (){selectAnswer(answerText);},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: const Color.fromARGB(150, 24, 0, 45),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
        style: GoogleFonts.notoSansAnatolianHieroglyphs(),
      ),
    );
  }
}
