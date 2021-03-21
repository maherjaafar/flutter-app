import 'package:flutter/material.dart';

class TrainingButtonFilled extends StatelessWidget {
  const TrainingButtonFilled({Key key, this.onPressed, this.text}) : super(key: key);

  final Function onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(this.text ?? "Click here"),
      ),
    );
  }
}
