import 'package:flutter/material.dart';

import 'package:components/pages/home_temp.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components App',
      home: Scaffold(
        appBar: AppBar(title: Text('Components')),
        body: HomePageTemp()
      ),
    );
  }
}
