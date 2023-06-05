import 'package:flutter/foundation.dart';

class Question{
  final String title;
  final List<Map> answer;
  Question({
    required this.title,
    required this.answer,
  });

}
class QuestionData{
  final _data = [
    Question(title: 'Кем хочешь стать?', 
    answer: [
      {'answer': 'Ведущим...',},
      {'answer': 'Врачом...',},
      {'answer': 'Пародист...','isCorrect':1},
      {'answer': 'Мастером...',},
    ]
    ),
    Question(title: 'Сегодня я...', 
    answer: [
      {'answer': 'на подвиг...',},
      {'answer': 'зарялку...',},
      {'answer': 'магазин...','isCorrect':1},
      {'answer': 'рюкзак...',},
    ]
    ),
  ];
List<Question> get questions => [..._data];
}