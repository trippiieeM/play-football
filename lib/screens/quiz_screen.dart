import 'package:flutter/material.dart';
import '../data/quiz_data.dart';
import '../models/quiz_question.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0;
  int _score = 0;
  bool _answered = false;
  int? _selectedAnswerIndex;

  void _answerQuestion(int selectedIndex) {
    if (_answered) return;

    setState(() {
      _answered = true;
      _selectedAnswerIndex = selectedIndex;

      if (selectedIndex == QuizData.questions[_currentQuestionIndex].correctAnswerIndex) {
        _score++;
      }
    });

    Future.delayed(const Duration(seconds: 1), () {
      if (_currentQuestionIndex < QuizData.questions.length - 1) {
        setState(() {
          _currentQuestionIndex++;
          _answered = false;
          _selectedAnswerIndex = null;
        });
      } else {
        Navigator.pushReplacementNamed(
          context,
          '/result',
          arguments: {'score': _score, 'total': QuizData.questions.length},
        );
      }
    });
  }

  Color _getOptionColor(int optionIndex) {
    if (!_answered) return Colors.white;
    
    if (optionIndex == QuizData.questions[_currentQuestionIndex].correctAnswerIndex) {
      return Colors.green;
    } else if (optionIndex == _selectedAnswerIndex) {
      return Colors.red;
    }
    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    final QuizQuestion currentQuestion = QuizData.questions[_currentQuestionIndex];
    final double progress = (_currentQuestionIndex + 1) / QuizData.questions.length;

    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        title: const Text('Football Quiz'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Progress Bar
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.green[100],
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
              minHeight: 8,
              borderRadius: BorderRadius.circular(4),
            ),
            const SizedBox(height: 16),
            
            // Question Counter
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Question ${_currentQuestionIndex + 1}/${QuizData.questions.length}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                Text(
                  'Score: $_score',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            
            // Question
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.withOpacity(0.2),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Text(
                currentQuestion.question,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 32),
            
            // Options
            Expanded(
              child: ListView.builder(
                itemCount: currentQuestion.options.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: _getOptionColor(index),
                    elevation: 2,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: _answered
                            ? (index == currentQuestion.correctAnswerIndex
                                ? Colors.green
                                : index == _selectedAnswerIndex
                                    ? Colors.red
                                    : Colors.grey)
                            : Colors.green[100],
                        child: Text(
                          String.fromCharCode(65 + index), // A, B, C, D
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: _answered
                                ? Colors.white
                                : Colors.green,
                          ),
                        ),
                      ),
                      title: Text(
                        currentQuestion.options[index],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: _answered ? Colors.white : Colors.black87,
                        ),
                      ),
                      onTap: () => _answerQuestion(index),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}