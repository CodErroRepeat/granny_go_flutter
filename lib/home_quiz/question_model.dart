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
    "1.Do you feel that you forget few things",
    [
      Answer("YES", false),
      Answer("NO", true),
    ],
  ));

  list.add(Question(
    "2.If so, is your memory worse than before?",
    [
      Answer("YES", false),
      Answer("NO", true),
    ],
  ));

  list.add(Question(
    "3.Do you repeat questions or statements in the same day?",
    [
      Answer("YES", false),
      Answer("NO", true),
    ],
  ));

  list.add(Question(
    "4.Do you forget few doctor appointments?",
    [
      Answer("YES", false),
      Answer("NO", true),
    ],
  ));
  list.add(Question(
    "5.Do you misplace items more than once?",
    [
      Answer("YES", false),
      Answer("NO", true),
    ],
  ));
  list.add(Question(
    "6.Do you think that someone is stealing your items when you cannot find?",
    [
      Answer("YES", false),
      Answer("NO", true),
    ],
  ));
  list.add(Question(
    "7.Do you find difficulty in finding the dates or time?",
    [
      Answer("YES", false),
      Answer("NO", true),
    ],
  ));
  list.add(Question(
    "8.Do you find difficulty in unfamiliar places?",
    [
      Answer("YES", false),
      Answer("NO", true),
    ],
  ));
  list.add(Question(
    "9.Did you get any confusion when you are outside the home or in travel?",
    [
      Answer("YES", false),
      Answer("NO", true),
  ));
  list.add(Question(
    "10.Do you find difficulty in handling money?",
    [
      Answer("YES", false),
      Answer("NO", true),
    ],
  ));
  list.add(Question(
    "11.Do you feel difficulty in paying bills?",
    [
      Answer("YES", false),
      Answer("NO", true),
    ],
  ));
  list.add(Question(
    "12.Do you miss taking medicine regularly?",
    [
      Answer("YES", false),
      Answer("NO", true),
    ],
  ));list.add(Question(
    "13.Do you find difficulty in driving?",
    [
      Answer("YES", false),
      Answer("NO", true),
    ],
  ));
  list.add(Question(
    "14.Do you find some problems in handling appliances like oven,stove,remote?",
    [
      Answer("YES", false),
      Answer("NO", true),
    ],
  ));
  list.add(Question(
    "15.Do you feel difficulty in completing home repair works?",
    [
      Answer("YES", false),
      Answer("NO", true),
    ],
  ));
  list.add(Question(
    "16.Are youu continuing doing exercise dance or craft?",
    [
      Answer("YES", false),
      Answer("NO", true),
    ],
  ));list.add(Question(
    "17.Have you met any situation of lost in some places?",
    [
      Answer("YES", false),
      Answer("NO", true),
    ],
  ));list.add(Question(
    "18.Can you identify directions properly?",
    [
      Answer("YES", false),
      Answer("NO", true),
    ],
  ));
  list.add(Question(
    "19.Do you find difficulty in finding words other than names?",
    [
      Answer("YES", false),
      Answer("NO", true),
    ],
  ));
  list.add(Question(
    "20.Do you confuse names of family memberrs with others?",
    [
      Answer("YES", false),
      Answer("NO", true),
    ],
  ));
  list.add(Question(
    "21.Do you feel difficulty in recognizing people familiar to you?",
    [
      Answer("YES", false),
      Answer("NO", true),
    ],
  ));
  return list;
}
