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
        primaryColor: const Color(0xFF00B2FF),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF00B2FF),
          secondary: Color(0xFFFF6B35),
          surface: Color(0xFF1A1A2E),
          background: Color(0xFF16213E),
          onBackground: Colors.white,
        ),
        useMaterial3: true,
        fontFamily: 'Inter',
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          displayMedium: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white70,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Colors.white70,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/quiz': (context) => const QuizScreen(),
        '/result': (context) => const ResultScreen(),
      },
    );
  }
}