import '../models/quiz_question.dart';

class QuizData {
  static final List<QuizQuestion> questions = [
    // Original Questions
    QuizQuestion(
      question: "Which country won the 2022 FIFA World Cup?",
      options: ["Argentina", "France", "Brazil", "Germany"],
      correctAnswerIndex: 0,
    ),
    QuizQuestion(
      question: "Who has won the most Ballon d'Or awards?",
      options: ["Cristiano Ronaldo", "Lionel Messi", "Michel Platini", "Johan Cruyff"],
      correctAnswerIndex: 1,
    ),
    QuizQuestion(
      question: "Which club has won the most UEFA Champions League titles?",
      options: ["Barcelona", "Bayern Munich", "AC Milan", "Real Madrid"],
      correctAnswerIndex: 3,
    ),
    QuizQuestion(
      question: "Who is the all-time top scorer in the Premier League?",
      options: ["Alan Shearer", "Wayne Rooney", "Harry Kane", "Sergio Aguero"],
      correctAnswerIndex: 0,
    ),
    QuizQuestion(
      question: "Which player is known as 'The Pharaoh'?",
      options: ["Salah", "Mane", "Aubameyang", "Mahrez"],
      correctAnswerIndex: 0,
    ),
    QuizQuestion(
      question: "In which year was the first World Cup held?",
      options: ["1930", "1950", "1920", "1940"],
      correctAnswerIndex: 0,
    ),
    QuizQuestion(
      question: "Which nation has won the most African Cup of Nations titles?",
      options: ["Egypt", "Ghana", "Cameroon", "Nigeria"],
      correctAnswerIndex: 0,
    ),
    QuizQuestion(
      question: "Who scored the 'Hand of God' goal?",
      options: ["Diego Maradona", "Lionel Messi", "Pele", "Zinedine Zidane"],
      correctAnswerIndex: 0,
    ),

    // New Questions - Club Football
    QuizQuestion(
      question: "Which English club is known as 'The Red Devils'?",
      options: ["Manchester United", "Liverpool", "Arsenal", "Chelsea"],
      correctAnswerIndex: 0,
    ),
    QuizQuestion(
      question: "Which stadium is called 'The Theatre of Dreams'?",
      options: ["Old Trafford", "Anfield", "Camp Nou", "San Siro"],
      correctAnswerIndex: 0,
    ),
    QuizQuestion(
      question: "Who managed Barcelona's famous 'Dream Team' in the early 1990s?",
      options: ["Johan Cruyff", "Pep Guardiola", "Luis Enrique", "Frank Rijkaard"],
      correctAnswerIndex: 0,
    ),
    QuizQuestion(
      question: "Which club has won the most Serie A titles in Italy?",
      options: ["Juventus", "AC Milan", "Inter Milan", "Roma"],
      correctAnswerIndex: 0,
    ),

    // New Questions - Players
    QuizQuestion(
      question: "Who is the only player to win the World Cup as both player and manager?",
      options: ["Mario Zagallo", "Franz Beckenbauer", "Didier Deschamps", "Zinedine Zidane"],
      correctAnswerIndex: 1,
    ),
    QuizQuestion(
      question: "Which player has made the most Premier League appearances?",
      options: ["Gareth Barry", "Ryan Giggs", "Frank Lampard", "James Milner"],
      correctAnswerIndex: 0,
    ),
    QuizQuestion(
      question: "Who scored the fastest hat-trick in Premier League history?",
      options: ["Sadio Mane", "Sergio Aguero", "Robbie Fowler", "Cristiano Ronaldo"],
      correctAnswerIndex: 0,
    ),
    QuizQuestion(
      question: "Which player has won the most Champions League titles?",
      options: ["Cristiano Ronaldo", "Lionel Messi", "Paolo Maldini", "Francisco Gento"],
      correctAnswerIndex: 3,
    ),

    // New Questions - International
    QuizQuestion(
      question: "Which country has won the most Copa America titles?",
      options: ["Uruguay", "Argentina", "Brazil", "Chile"],
      correctAnswerIndex: 0,
    ),
    QuizQuestion(
      question: "Who is the all-time top scorer for the Brazilian national team?",
      options: ["Pele", "Neymar", "Ronaldo", "Zico"],
      correctAnswerIndex: 1,
    ),
    QuizQuestion(
      question: "Which country hosted the 2018 FIFA World Cup?",
      options: ["Russia", "Qatar", "Brazil", "South Africa"],
      correctAnswerIndex: 0,
    ),
    QuizQuestion(
      question: "Who won the Golden Boot at the 2014 World Cup?",
      options: ["James Rodriguez", "Thomas Muller", "Lionel Messi", "Neymar"],
      correctAnswerIndex: 0,
    ),

    // New Questions - Records & Statistics
    QuizQuestion(
      question: "What is the highest transfer fee ever paid for a player?",
      options: ["Neymar to PSG", "Kylian Mbappe to PSG", "Cristiano Ronaldo to Juventus", "Eden Hazard to Real Madrid"],
      correctAnswerIndex: 0,
    ),
    QuizQuestion(
      question: "Which team went unbeaten in the 2003-04 Premier League season?",
      options: ["Arsenal", "Manchester United", "Chelsea", "Liverpool"],
      correctAnswerIndex: 0,
    ),
    QuizQuestion(
      question: "Who has scored the most goals in a single Premier League season?",
      options: ["Mohamed Salah", "Alan Shearer", "Cristiano Ronaldo", "Erling Haaland"],
      correctAnswerIndex: 3,
    ),
    QuizQuestion(
      question: "Which country has appeared in the most World Cup finals?",
      options: ["Brazil", "Germany", "Italy", "Argentina"],
      correctAnswerIndex: 0,
    ),

    // New Questions - Legends & History
    QuizQuestion(
      question: "Which player was known as 'The Divine Ponytail'?",
      options: ["Roberto Baggio", "Alessandro Del Piero", "Francesco Totti", "Paolo Maldini"],
      correctAnswerIndex: 0,
    ),
    QuizQuestion(
      question: "Who invented the 'Cruyff Turn'?",
      options: ["Johan Cruyff", "Marco van Basten", "Ruud Gullit", "Dennis Bergkamp"],
      correctAnswerIndex: 0,
    ),
    QuizQuestion(
      question: "Which team won the first ever European Cup in 1956?",
      options: ["Real Madrid", "Benfica", "AC Milan", "Barcelona"],
      correctAnswerIndex: 0,
    ),
    QuizQuestion(
      question: "Who was the first African player to win the Ballon d'Or?",
      options: ["George Weah", "Roger Milla", "Didier Drogba", "Samuel Eto'o"],
      correctAnswerIndex: 0,
    ),

    // New Questions - Modern Football
    QuizQuestion(
      question: "Which team won the 2023 UEFA Champions League?",
      options: ["Manchester City", "Inter Milan", "Real Madrid", "Bayern Munich"],
      correctAnswerIndex: 0,
    ),
    QuizQuestion(
      question: "Who won the 2023 Ballon d'Or?",
      options: ["Lionel Messi", "Erling Haaland", "Kylian Mbappe", "Kevin De Bruyne"],
      correctAnswerIndex: 0,
    ),
    QuizQuestion(
      question: "Which country will host the 2026 FIFA World Cup?",
      options: ["USA, Canada & Mexico", "Qatar", "England", "Australia"],
      correctAnswerIndex: 0,
    ),
  ];

  static int get totalQuestions => questions.length;
}