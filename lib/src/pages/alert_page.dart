import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page Bar'),
      ),
      body: Center(
        child: Container(
          child: Text('Hello Alert page ya entramos!'),
        ),
      ),
    );
  }
}
