import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page Bar'),
        actions: <Widget>[
          Container(
            child: CircleAvatar(
              child: Text("DF"),
              backgroundColor: Colors.white,
            ),
            padding: EdgeInsets.only(right: 10.0),
          )
        ],
      ),
      body: Center(
        child: Container(
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Favatarfiles.alphacoders.com%2F207%2F207181.jpg&f=1&nofb=1'),
            radius: 40.0,
          ),
          padding: EdgeInsets.all(5.0),
        ),
      )
    );
  }
}
