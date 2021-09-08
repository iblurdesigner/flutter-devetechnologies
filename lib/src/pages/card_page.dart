import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CardView'),
        ),
        body: ListView(
          padding: EdgeInsets.all(20.0),
          children: <Widget>[
            _card1(),
            _card2(),
          ],
        ));
  }

  Widget _card1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            title: Text('Soy el titulo de la tarjeta'),
            subtitle: Text('Soy el subtitulo de la tarjeta de prueba'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(onPressed: () {}, child: Text('Aceptar')),
              TextButton(onPressed: () {}, child: Text('Cancelar')),
            ],
          )
        ],
      ),
    );
  }

  Widget _card2() {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/loading.gif'), 
            image: NetworkImage('http://www.pixelstalk.net/wp-content/uploads/2016/04/Backgrounds-landscape-nature-wallpaper-HD.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Este es un card con FadeIn Image'),
            )
        ],
      ),
    );
  }
}
