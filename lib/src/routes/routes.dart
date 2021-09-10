import 'package:flutter/material.dart';

import 'package:components_dev/src/pages/home.dart';
import 'package:components_dev/src/pages/alert_page.dart';
import 'package:components_dev/src/pages/avatar_page.dart';
import 'package:components_dev/src/pages/card_page.dart';
import 'package:components_dev/src/pages/input_page.dart';
import 'package:components_dev/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    '/': (BuildContext context) => Home(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
  };
}
