import 'package:components_dev/utils/utils_functions.dart';
import 'package:flutter/material.dart';
import 'package:components_dev/providers/provider_menu.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Components Flutter'),
        ),
        body: _list());
  }

  Widget _list() {
    return FutureBuilder(
      initialData: [],
      future: menuProvider.loadData(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ListView(children: _listItems(snapshot.data, context));
      },
    );
  }

  List<Widget> _listItems(List<dynamic> optListMenu, BuildContext context) {
    final List<Widget> optValueWidget = [];

    optListMenu.forEach((element) {
      final widgetvalue = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.pushNamed(context, element['ruta']);
        },
      );
      optValueWidget.add(widgetvalue);
    });
    return optValueWidget;
  }
}
