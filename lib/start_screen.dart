import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});
  final void Function() switchScreen;

  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(137, 255, 255, 255),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.gafata(
            fontSize: 30,
            color: const Color.fromARGB(255, 236, 213, 251),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 0, 0, 0)),
          onPressed: switchScreen,
          icon: const Icon(Icons.arrow_right_outlined),
          label: const Text(
            'Start Quiz',
          ),
        ),
      ]),
    );
  }
}
