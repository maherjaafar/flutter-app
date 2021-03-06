import 'package:flutter/material.dart';
import 'package:flutter_training/Ui/core/models/user.dart';
import 'package:flutter_training/Ui/screens/messaging/messaging_screen.dart';
import 'package:flutter_training/Ui/widgets/training_button_filled.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final firstNameTextController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TrainingButtonFilled(onPressed: _showModalBottomSheet),
      ),
    );
  }

  _showModalBottomSheet() {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Text(
                    "First name:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: TextFormField(
                    controller: firstNameTextController,
                  ),
                  trailing: TrainingButtonFilled(onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MessagingScreen(remoteUser: User(firstName: firstNameTextController.text))));
                  }),
                )
              ],
            ),
          );
        });
  }
}
