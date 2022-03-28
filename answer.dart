import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //means that the function stored has to be a property
  // or a pointer at a function
  //final void Function() selectHandler;

  final VoidCallback selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue, //background color
          onPrimary: Colors.white70, //text color
        ),
        child: Text("Answer 1"),
        //onPressed: null,
        onPressed: selectHandler,
      ),
    );
  }
}
