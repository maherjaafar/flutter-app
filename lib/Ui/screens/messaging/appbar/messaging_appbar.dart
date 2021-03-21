import 'package:flutter/material.dart';
import 'package:flutter_training/Ui/widgets/action_button.dart';

AppBar messagingAppBar(context, remoteUser) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: leadingActions(context),
    titleSpacing: 4,
    title: _userAvatarAndName(remoteUser),
    actions: _callActions(),
  );
}

List<Widget> _callActions() {
  return [
    ActionButton(icon: Icons.file_copy_outlined, press: () {}),
    ActionButton(icon: Icons.call_outlined, press: () {}),
  ];
}

Row _userAvatarAndName(remoteUser) {
  return Row(
    children: [
      CircleAvatar(backgroundColor: Colors.green, child: Text("A", style: TextStyle(color: Colors.white))),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(remoteUser.firstName, style: TextStyle(color: Colors.black)),
            Text("last seen Wed at 11:45", style: TextStyle(color: Colors.black, fontSize: 10)),
          ],
        ),
      )
    ],
  );
}

Padding leadingActions(context) {
  return Padding(
    padding: EdgeInsets.only(left: 10),
    child: Row(
      children: [
        Expanded(
          flex: 2,
          child: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.blue),
              onPressed: () {
                Navigator.of(context).pop();
              }),
        ),
        Expanded(flex: 1, child: Text("4", style: TextStyle(color: Colors.blue))),
      ],
    ),
  );
}
