import 'package:flutter/material.dart';

// This class is used to display the card that shows the word as well...
// ...as the definition
class WordCard extends StatelessWidget{
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
              children: const [
                Text(
                  style: TextStyle(
                    fontSize: 32,
                  ),
                  // Need to make this dynamic
                  "Word!",
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
