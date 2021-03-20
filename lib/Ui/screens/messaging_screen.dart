import 'package:flutter/material.dart';
import 'package:flutter_training/Ui/core/models/user.dart';

class MessagingScreen extends StatelessWidget {
  const MessagingScreen({Key key, this.localUser, this.remoteUser}) : super(key: key);

  final User localUser;
  final User remoteUser;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: Colors.blue,
              ),
              SizedBox(width: 5),
              Text("4", style: TextStyle(color: Colors.blue)),
            ],
          ),
        ),
        titleSpacing: 3,
        title: Row(
          children: [
            CircleAvatar(backgroundColor: Colors.green, child: Text("A", style: TextStyle(color: Colors.white))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Ahmed", style: TextStyle(color: Colors.black)),
                  Text("last seen Wed at 11:45", style: TextStyle(color: Colors.black, fontSize: 10)),
                ],
              ),
            )
          ],
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.videocam_outlined,
                color: Colors.blue,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.call_outlined,
                color: Colors.blue,
              ),
              onPressed: () {})
        ],
      ),
      body: Container(
          height: screenSize.height,
          width: screenSize.width,
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://static.toiimg.com/photo/75427203/iceberg.jpg"), fit: BoxFit.fill)),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: screenSize.width,
                    height: 50,
                    color: Color(0xffF6F6F6),
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Icon(Icons.add, color: Colors.blue),
                        Expanded(
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
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Icon(Icons.file_copy_outlined, color: Colors.blue, size: 20),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
