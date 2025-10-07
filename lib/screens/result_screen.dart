import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final int score = args['score'];
    final int total = args['total'];
    final double percentage = (score / total) * 100;

    String getResultMessage() {
      if (percentage >= 90) return 'Football Genius! 🏆';
      if (percentage >= 70) return 'Great Job! ⚽';
      if (percentage >= 50) return 'Good Effort! 👍';
      return 'Keep Learning! 📚';
    }

    Color getResultColor() {
      if (percentage >= 90) return Colors.green;
      if (percentage >= 70) return Colors.blue;
      if (percentage >= 50) return Colors.orange;
      return Colors.red;
    }

    return Scaffold(
      backgroundColor: Colors.green[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Result Icon
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: getResultColor(),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  percentage >= 50 ? Icons.emoji_events : Icons.sports_soccer,
                  size: 60,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 32),
              
              // Result Title
              Text(
                getResultMessage(),
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: getResultColor(),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              
              // Score
              Text(
                'Your Score:',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '$score / $total',
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              Text(
                '${percentage.toStringAsFixed(1)}%',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green[700],
                ),
              ),
              const SizedBox(height: 40),
              
              // Buttons
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context, 
                          '/quiz', 
                          (route) => false
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'PLAY AGAIN',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context, 
                          '/', 
                          (route) => false
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        side: const BorderSide(color: Colors.green),
                      ),
                      child: const Text(
                        'BACK TO HOME',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}