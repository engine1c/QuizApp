import 'package:flutter/material.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final index;
  final questionData;
  final Function onChangAnswer;

  const Quiz({super.key, this.index, required this.questionData, required this.onChangAnswer});

  final mainTextStyle = const TextStyle(
      color: Colors.teal, fontSize: 28, fontWeight: FontWeight.w900);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  questionData.questions[index].title,
                  style: mainTextStyle,
                ),
              ),
              ...questionData.questions[index].answer
                  .map((value) => Answer(
                        title: value['answer'],
                        onChangeAnswer: onChangAnswer,
                        isCorrect: value.containsKey('isCorrect')?true:false, 
                      ))
                  .toList(),
      ],
    );
  }
}
