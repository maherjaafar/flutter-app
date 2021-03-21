import 'package:flutter/material.dart';
import 'package:flutter_training/Ui/core/models/user.dart';
import 'package:flutter_training/Ui/widgets/action_button.dart';

import 'appbar/messaging_appbar.dart';
import 'widgets/message_widget.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class MessagingScreen extends StatelessWidget {
  const MessagingScreen({Key key, this.localUser, this.remoteUser}) : super(key: key);

  final User localUser;
  final User remoteUser;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: messagingAppBar(context, remoteUser),
      body: WillPopScope(
        onWillPop: () async {
          return true;
        },
        child: Container(
            height: screenSize.height,
            width: screenSize.width,
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage("https://static.toiimg.com/photo/75427203/iceberg.jpg"), fit: BoxFit.fill)),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    reverse: true,
                    child: Column(
                      children: [
                        MessageWidget(messageText: "Saleeem", senderType: SenderType.remote),
                        MessageWidget(senderType: SenderType.local),
                        MessageWidget(senderType: SenderType.remote),
                        MessageWidget(senderType: SenderType.local),
                        MessageWidget(senderType: SenderType.remote),
                        MessageWidget(senderType: SenderType.local),
                        MessageWidget(senderType: SenderType.remote),
                        MessageWidget(senderType: SenderType.local),
                        MessageWidget(senderType: SenderType.remote),
                        MessageWidget(senderType: SenderType.local),
                        MessageWidget(senderType: SenderType.remote),
                        MessageWidget(senderType: SenderType.local),
                        MessageWidget(messageText: "Saleeem", senderType: SenderType.remote),
                        MessageWidget(senderType: SenderType.local),
                        MessageWidget(senderType: SenderType.remote),
                        MessageWidget(senderType: SenderType.local),
                        MessageWidget(senderType: SenderType.remote),
                        MessageWidget(senderType: SenderType.local),
                        MessageWidget(senderType: SenderType.remote),
                        MessageWidget(senderType: SenderType.local),
                        MessageWidget(senderType: SenderType.remote),
                        MessageWidget(senderType: SenderType.local),
                        MessageWidget(senderType: SenderType.remote),
                        MessageWidget(senderType: SenderType.local),
                        MessageWidget(messageText: "Saleeem", senderType: SenderType.remote),
                        MessageWidget(senderType: SenderType.local),
                        MessageWidget(senderType: SenderType.remote),
                        MessageWidget(senderType: SenderType.local),
                        MessageWidget(senderType: SenderType.remote),
                        MessageWidget(senderType: SenderType.local),
                        MessageWidget(senderType: SenderType.remote),
                        MessageWidget(senderType: SenderType.local),
                        MessageWidget(senderType: SenderType.remote),
                        MessageWidget(senderType: SenderType.local),
                        MessageWidget(senderType: SenderType.remote),
                        MessageWidget(senderType: SenderType.local),
                      ],
                    ),
                  ),
                ),
                _bottomMessagingSheet(screenSize),
              ],
            )),
      ),
    );
  }

  Column _bottomMessagingSheet(Size screenSize) {
    Map<String, dynamic> newBook = new Map<String, dynamic>();
    newBook["title"] = "title value";
    newBook["author"] = "author value";

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: screenSize.width,
          height: 50,
          color: Color(0xffF6F6F6),
          padding: EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              ActionButton(icon: Icons.add, press: () {}),
              _whatsappTextFromField(press: () {
                FirebaseFirestore.instance.collection("books").add(newBook).whenComplete(() {
                  // You can add your desire action after the row is added
                });
              }),
              ActionButton(icon: Icons.camera_alt_outlined, press: () {}),
              ActionButton(icon: Icons.mic_outlined, press: () {}),
            ],
          ),
        ),
      ],
    );
  }

  Expanded _whatsappTextFromField({press}) {
    return Expanded(
        flex: 3,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                      padding: EdgeInsets.only(left: 4, right: 4),
                      width: 100,
                      child: TextField(
                        decoration: InputDecoration(),
                      )),
                ),
                ActionButton(
                  icon: Icons.file_copy_outlined,
                  press: press,
                )
              ],
            ),
          ),
        ));
  }
}
