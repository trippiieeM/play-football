import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/quiz_screen.dart';
import 'screens/result_screen.dart';

void main() {
  runApp(const FootballQuizGame());
}

class FootballQuizGame extends StatelessWidget {
  const FootballQuizGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football Quiz Game',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/quiz': (context) => const QuizScreen(),
        '/result': (context) => const ResultScreen(), // Fixed extra parenthesis
      },
    );
  }
}