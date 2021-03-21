import 'package:flutter/material.dart';

enum SenderType { remote, local }

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    Key key,
    this.senderType,
    this.messageTime,
    this.messageText,
  }) : super(key: key);

  final SenderType senderType;
  final String messageText;
  final String messageTime;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: senderType == SenderType.local ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(5),
          child: GestureDetector(
            child: Container(
              width: 200,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: senderType == SenderType.local ? Color(0xffDCF8C7) : Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Container(alignment: Alignment.topLeft, child: Text(messageText ?? "Default message")),
                  Container(alignment: Alignment.bottomRight, child: Text("10:54")),
                ],
              ),
            ),
            onLongPress: () {
              return print("You pressed this button");
            },
          ),
        ),
      ],
    );
  }
}
