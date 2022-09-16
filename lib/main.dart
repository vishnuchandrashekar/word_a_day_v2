import 'package:flutter/material.dart';
import 'search_bar.dart';
import 'word_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var wordTextCard = WordCard();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text("Word a day"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed:
                  // (() => Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => const Search()))),
                  () {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              },
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Displays the Card that hold the word as well as the definition.
            Center(
              child: wordTextCard.showWordCard(),
            ),
          ],
        ),
      );
  }
}
