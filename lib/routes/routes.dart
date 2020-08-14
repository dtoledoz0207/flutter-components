import 'package:flutter/material.dart';

import 'package:components/pages/alert_page.dart';
import 'package:components/pages/avatar_page.dart';
import 'package:components/pages/home_page.dart';




Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage()
  };
}