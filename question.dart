import 'package:flutter/material.dart';

class Choice extends StatelessWidget {
  final String choiceText;

  Choice(this.choiceText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        choiceText,
        style: TextStyle(color: Colors.grey[600], fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
