import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final List<String> options = ['One','Two','Three','Four','Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temp Components'),
      ),
      body: ListView(
        children: _createItems()
      ),
    );
  }

  List<Widget> _createItems() {

    List<Widget> list = new List<Widget>();

    for (String option in options) {
      final tempItemWidget = ListTile(
        title: Text(option),
      );

      list..add(tempItemWidget)
          ..add(Divider(thickness: 2.0, color: Colors.deepPurple,));
    }

    return list;
  }
}