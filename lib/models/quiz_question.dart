class QuizQuestion {
  final String question;
  final List<String> options;
  final int correctAnswerIndex;
  final String? imageAsset;

  const QuizQuestion({
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
    this.imageAsset,
  });
}