import 'package:flutter/material.dart';
import 'word_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var wordTextCard = WordCard();
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Word a day"),
            centerTitle: true,
          ),
          body: Center(
            // Displays the Card that hold the word as well as the definition.
            child: wordTextCard.showWordCard(),
          ),
        ),
      ),
    );
  }
}
