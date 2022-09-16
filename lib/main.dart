import 'package:flutter/material.dart';
import 'package:word_a_day_v2/main_page_drawer.dart';
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
  // Word card object
  //var wordTextCard = WordCard();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainPageDrawer(), // Implements the Drawer
      appBar: AppBar(                 // implements the App Bar
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
                delegate: CustomSearchDelegate(), // Implements the Search Bar
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children:  const [
          // Displays the Card that hold the word as well as the definition.
          Center(
            child: WordCard(), // Implements the Word Card
          ),
        ],
      ),
    );
  }
}
