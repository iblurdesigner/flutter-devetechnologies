import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page Bar'),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text('Mostrar la alerta'),
        onPressed: () {
          _showAlert(context);
        },
        style: ElevatedButton.styleFrom(
            primary: Colors.red, shape: StadiumBorder()),
      )),
    );
  }

  _showAlert(BuildContext context) {
     showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Esta infectado de virus'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Debe instalar el antivirus Norton 3021'),
                FlutterLogo( size: 50.00,)
              ],
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(), 
              child: Text('Cancelar')
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(), 
              child: Text('Aceptar')
              ),
            ],
          );
        }
        );
  }
}
