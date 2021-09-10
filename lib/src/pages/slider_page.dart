import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valueSlider = 100.0;
  bool blockCheck = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tesla models'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 30.0),
          child: Column(
            children: <Widget>[
              _createSlider(),
              Divider(),
              _createImage(),
              Divider(),
              _createImage2(),
              Divider(),
              _createSwitch(),
              Divider(),
              _createCheck()
            ],
          ),
        ),
      ),
    );
  }

  _createSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        divisions: 20,
        label: 'Visualizando Slider',
        value: _valueSlider,
        min: 10.0,
        max: 400,
        onChanged: (blockCheck)
            ? null
            : (value) {
                setState(() {
                  _valueSlider = value;
                });
              });
  }

  _createImage() {
    return Column(
      children: <Widget>[
        Image(
          image: NetworkImage(
              'http://www.pngmart.com/files/4/Tesla-Transparent-Background-420x269.png'),
          width: _valueSlider,
          fit: BoxFit.contain,
        )
      ],
    );
  }

  _createImage2() {
    return Column(
      children: <Widget>[
        Image(
          image: NetworkImage(
              'http://pngimg.com/uploads/tesla_car/tesla_car_PNG36.png'),
          width: _valueSlider,
          fit: BoxFit.contain,
        )
      ],
    );
  }

  _createSwitch() {
    return SwitchListTile(
        title: Text('Bloquear Slider'),
        value: blockCheck,
        onChanged: (value) {
          setState(() {
            blockCheck = value;
          });
        });
  }

  //El check hace la misma funcionalidad del Switch
  _createCheck() {
    return CheckboxListTile(
        title: Text('Otra forma de bloquear Slider'),
        value: blockCheck,
        onChanged: (value) {
          setState(() {
            blockCheck = value!;
          });
        });
  }
}
