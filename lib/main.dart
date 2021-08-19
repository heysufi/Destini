import 'package:destini/choice_brain.dart';
import 'package:destini/widgets/Buttons.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ChoiceApp(),
      ),
    );
  }
}

class ChoiceApp extends StatefulWidget {
  @override
  _ChoiceAppState createState() => _ChoiceAppState();
}

class _ChoiceAppState extends State<ChoiceApp> {
  @override
  Widget build(BuildContext context) {
    ChoiceBrain choiceBrain = ChoiceBrain();
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://c4.wallpaperflare.com/wallpaper/24/23/796/portrait-display-vertical-pattern-digital-art-wallpaper-preview.jpg')),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  choiceBrain.getChoiceQuestion(),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Buttons(
              onPress: () {
                setState(() {
                  choiceBrain.nextchoice(1);
                });
              },
              text: choiceBrain.getChoice1(),
              buttoncolor: Colors.red,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Buttons(
              onPress: () {
                setState(() {
                  choiceBrain.nextchoice(2);
                });
              },
              text: choiceBrain.getChoice2(),
              buttoncolor: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
