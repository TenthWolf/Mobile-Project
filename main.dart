import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

//we created a class that shows our objective on adding text and running on the
//emulator

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State {
  var _buttonIndex = 0;

  void _answerQuestion() {
    setState(() {
      _buttonIndex = _buttonIndex + 1;
    });
    print(_buttonIndex);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // questions will be used to create a list
    var questions = [
      "Choose your round?",
      "What's your favorite picture?",
      "Who's your favorite animal?",
    ];
    return MaterialApp(
      //Constructing a scaffold to add more widgets including a title and body text
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Choice(
              questions[_buttonIndex],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
