import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key key,
    this.press,
    this.icon,
  }) : super(key: key);

  final press;
  final icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Padding(padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10), child: Icon(icon, color: Colors.blue)), onTap: press);
  }
}
