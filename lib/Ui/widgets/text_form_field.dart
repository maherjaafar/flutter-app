import 'package:flutter/material.dart';

class TrainingTextFormField extends StatelessWidget {
  const TrainingTextFormField({Key key, this.initialValue}) : super(key: key);

  final String initialValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        initialValue: this.initialValue,
        autofillHints: ["Write text here"],
      ),
    );
  }
}
