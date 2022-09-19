// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// This class is used to display the card that shows the word as well...
// ...as the definition
class WordCard extends StatelessWidget {
  const WordCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            width: 300,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: (() {}),
                      icon: const Icon(Icons.arrow_back),
                      label: Text(''),
                    ),
                    Text(
                      style: TextStyle(
                        fontSize: 32,
                      ),
                      // Need to make this dynamic
                      "Word!",
                    ),
                    ElevatedButton.icon(
                      onPressed: (() {}),
                      icon: const Icon(Icons.arrow_forward),
                      label: Text(''),
                    )
                  ],
                ),
                //Spacer(flex: MainAxisAlignment.spaceEvenly,),
                Text(
                  "Description!!",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
