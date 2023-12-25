class QuizModel {
  const QuizModel(this.question, this.answers);
  final String question;
  final List<String> answers;
  
  List<String> shuffle() {
    final shuffled = List.of(answers);
    shuffled.shuffle();
    return shuffled;
  }
}
