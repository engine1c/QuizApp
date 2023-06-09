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
    Question(title: 'Сегодня я1...', 
    answer: [
      {'answer': 'на подвиг...',},
      {'answer': 'зарялку...',},
      {'answer': 'магазин...','isCorrect':1},
      {'answer': 'рюкзак...',},
    ]
    ),
    Question(title: 'Сегодня я2...', 
    answer: [
      {'answer': 'на подвиг...',},
      {'answer': 'зарялку...',},
      {'answer': 'магазин...','isCorrect':1},
      {'answer': 'рюкзак...',},
    ]
    ),
    Question(title: 'Сегодня я3...', 
    answer: [
      {'answer': 'на подвиг...',},
      {'answer': 'зарялку...',},
      {'answer': 'магазин...','isCorrect':1},
      {'answer': 'рюкзак...',},
    ]
    ),
    Question(title: 'Сегодня я4...', 
    answer: [
      {'answer': 'на подвиг...',},
      {'answer': 'зарялку...',},
      {'answer': 'магазин...','isCorrect':1},
      {'answer': 'рюкзак...',},
    ]
    ),
    Question(title: 'Сегодня я5...', 
    answer: [
      {'answer': 'на подвиг...',},
      {'answer': 'зарялку...',},
      {'answer': 'магазин...','isCorrect':1},
      {'answer': 'рюкзак...',},
    ]
    ),
    Question(title: 'Сегодня я6...', 
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