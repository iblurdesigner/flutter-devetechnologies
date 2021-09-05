import 'package:flutter/material.dart';

import 'package:components_dev/src/pages/alert_page.dart';
import 'package:components_dev/src/pages/avatar_page.dart';
import 'package:components_dev/src/pages/home.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    '/': (BuildContext context) => Home(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
  };
}
