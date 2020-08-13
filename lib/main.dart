import 'package:flutter/material.dart';

//import 'package:components/pages/home_temp.dart';
import 'package:components/pages/home_page.dart';
import 'package:components/pages/alert_page.dart';
import 'package:components/pages/avatar_page.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components App',
      //home: HomePage()
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        'alert': (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage()
      },
    );
  }
}
