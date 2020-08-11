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
        //children: _createItems()
        children: _createItemsShort(),
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

  List<Widget> _createItemsShort() {
    final widgets = options.map((option) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text('¡$option!'),
            subtitle: Text('Something else'),
            leading: Icon(Icons.adb),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();

    return widgets;
  }
}