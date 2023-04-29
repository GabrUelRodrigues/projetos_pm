import 'package:quiz/domain/answer.dart';
import 'package:quiz/domain/question.dart';

List<Question> loadQuestions(){
  return <Question>[
    Question(
      text: "Qual a cor predominante do tubarão branco?",
      a: Answer(text: "Branco", correct: false),
      b: Answer(text: "Cinza", correct: true),
      c: Answer(text: "Preto", correct: false),
      d: Answer(text: "Azul", correct: false),
      e: Answer(text: "Rosa", correct: false)
    ),

    Question(
      text: "Quanto é 3 + 3 * 3?",
      a: Answer(text: "18", correct: false),
      b: Answer(text: "15", correct: false),
      c: Answer(text: "13", correct: false),
      d: Answer(text: "12", correct: true),
      e: Answer(text: "10", correct: false)
    ),
  ];
}