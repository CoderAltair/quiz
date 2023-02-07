class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id, required this.question, required this.answer, required this.options});
}

// ignore: constant_identifier_names
const List sample_data = [
  {
    "id": 1,
    "question":
        "Flutter texnologiyasi qaysi kompaniya tomonidan ishlab chiqilgan",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Google qachondan flutterga reliz bergan",
    "options": ['Iyul 2017', 'Iyun 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "So`zlar qaysi tipda yoziladi",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "Chop ettish komandasi qaysi bir javobda",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer_index": 2,
  },
];
