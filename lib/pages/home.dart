import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/question.dart';
import 'package:flutter_application_1/widgets/answer.dart';
import 'package:flutter_application_1/widgets/progressbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final QuestionData data = QuestionData();

  int _countResult = 0;
  int _questionIndex = 0;

  List<Icon> _icons = [];

  void _clearState() => setState(() {
        int _countResult = 0;
        int _questionIndex = 0;
        _icons = [];
      });

  void _onChangeAnswer(bool isCorect) => setState(() {
        if (isCorect) {
          _icons.add(const Icon(Icons.brightness_1, color: Color(0xffbd27ff)));
        } else {
          _icons.add(const Icon(Icons.brightness_1, color: Color(0xff000000)));
        }
        _questionIndex += 1;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TESTIN')),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          color: Color(0xff2a375a),
          image: DecorationImage(
              image: AssetImage('assets/images/1.jpg'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            children: [
              ProgressBar(
                  icons: _icons,
                  count: _questionIndex,
                  total: data.questions.length),
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  data.questions[_questionIndex].title,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              ...data.questions[_questionIndex].answer
                  .map((value) => Answer(
                        title: value['answer'],
                        onChangeAnswer: _onChangeAnswer,
                        isCorrect: value.containsKey('isCorrect')?true:false, 
                      ))
                  .toList(),

            ],
          ),
        ),
      ),
    );
  }
}
