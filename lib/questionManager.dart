class Question {
  String question;
  bool answer;
  Question(this.question, this.answer);
}

class QuestionManager {
  final questions = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];
  var currentQuestionIndex = 0;
  final isCorrectResults = [];

  getQuestion() => questions[currentQuestionIndex % questions.length].question;

  isGameOver() => currentQuestionIndex == questions.length;

  // numberCorrect() => isCorrectResults.reduce((value, element) {
  //       return element ? (value + 1) : value;
  //     });

  // numberCorrect() => isCorrectResults.where((item) => item).length;

  numberCorrect() =>
      isCorrectResults.fold(0, (sum, next) => sum + (next ? 1 : 0));

  numberOfQuestionsAsked() => currentQuestionIndex;

  submitAnswer(userAnswer) {
    isCorrectResults.add(userAnswer ==
        questions[currentQuestionIndex % questions.length].answer);
    currentQuestionIndex++;
  }

  // getIsCorrectResultForIndex(index) => isCorrectResults[index];
}
