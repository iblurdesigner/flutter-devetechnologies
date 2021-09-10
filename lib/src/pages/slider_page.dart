import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valueSlider = 100.0;

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
              _createImage2()
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
        onChanged: (double value) {
          setState(() {
            _valueSlider = value;
          });
        });
  }

  _createImage() {
    return Column(
      children: <Widget>[
        Image(
          image: NetworkImage('http://www.pngmart.com/files/4/Tesla-Transparent-Background-420x269.png'),
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
          image: NetworkImage('http://pngimg.com/uploads/tesla_car/tesla_car_PNG36.png'),
          width: _valueSlider,
          fit: BoxFit.contain,
        )
      ],
    );
  }
}
