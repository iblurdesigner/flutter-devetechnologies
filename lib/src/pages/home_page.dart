import 'package:flutter/material.dart';

class HomaPage extends StatelessWidget {
  final itemsOptions = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ListView(
          children: _setItems(),
        ),
      ),
    );
  }

  List<Widget> _setItems() {
    List<Widget> list = [];
    for (var opt in itemsOptions) {
      final itemListTitle = ListTile(
        leading: Icon(Icons.access_alarm_outlined),
        title: Text(opt),
        subtitle: Text('Test...'),
        trailing: Icon(Icons.keyboard_arrow_right),
        );
      list.add(itemListTitle);
      list.add(Divider());
    }
    return list;
  }
}
