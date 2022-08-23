class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Do you have increased anxiety?",
    [
      Answer("NEVER", false),
      Answer("ALWAYS", true),
      Answer("OFTEN", false),
    ],
  ));

  list.add(Question(
    "Can you recognise your family members face?",
    [
      Answer("NEVER", false),
      Answer("ALWAYS", true),
      Answer("OFTEN", false),
    ],
  ));

  list.add(Question(
    "Are you feel any trouble in doing your daily chores?",
    [
      Answer("NEVER", false),
      Answer("ALWAYS", true),
      Answer("OFTEN", false),
    ],
  ));

  list.add(Question(
    "Are you good at remembering things?",
    [
      Answer("NEVER", false),
      Answer("ALWAYS", true),
     Answer("OFTEN", false),
    ],
  ));
  list.add(Question(
    "Are you able to communicate well with others ?",
    [
      Answer("NEVER", false),
      Answer("ALWAYS", true),
      Answer("OFTEN", false),
    ],
  ));
  list.add(Question(
    "Do you have any problems with reading and writing?",
    [
      Answer("NEVER", false),
      Answer("ALWAYS", true),
      Answer("OFTEN", false),
    ],
  ));
  list.add(Question(
    "Are you facing any troubles while making decisions?",
    [
      Answer("NEVER", false),
      Answer("ALWAYS", true),
      Answer("OFTEN", false),
    ],
  ));
  list.add(Question(
    " Have you experienced any stroke attack previously?",
    [
      Answer("NEVER", false),
      Answer("ALWAYS", true),
      Answer("OFTEN", false),
    ],
  ));
  list.add(Question(
    "Are you facing any difficulties in learning and understanding things",
    [
      Answer("NEVER", false),
      Answer("ALWAYS", true),
      Answer("OFTEN", false),
    ],
  ));
  list.add(Question(
    "Are you facing any mood changes?",
    [
      Answer("NEVER", false),
      Answer("ALWAYS", true),
      Answer("OFTEN", false),
    ],
  ));
  return list;
}
