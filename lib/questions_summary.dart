import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 320,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: (data['answeredCorrectly'] as bool)
                          ? const Color.fromARGB(255, 152, 252, 155)
                          : const Color.fromARGB(255, 255, 118, 108)
                          ,),
                  child: Center(
                    child: Text(
                      ((data['questions_index'] as int) + 1).toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        (data['question'] as String).toString(),
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        (data['user_answer'] as String).toString(),
                        style: const TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 158, 79, 255)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        (data['correct_answer'] as String).toString(),
                        style: const TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 163, 255, 160)),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
