import 'package:flutter/material.dart';
import 'package:components/providers/menu_provider.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _list(),
    );
  }

  Widget _list() {

    menuProvider;

    return ListView(
      children: _items(),
    );
  }

  List<Widget> _items() {
    return [
      ListTile(title: Text('Hello world')),
      Divider(
        thickness: 2.0,
        color: Colors.blue[100],
      ),
      ListTile(title: Text('Hello world')),
      Divider(
        thickness: 2.0,
        color: Colors.blue[100],
      ),
      ListTile(title: Text('Hello world')),
      Divider(
        thickness: 2.0,
        color: Colors.blue[100],
      ),
      ListTile(title: Text('Hello world')),
      Divider(
        thickness: 2.0,
        color: Colors.blue[100],
      ),
      ListTile(title: Text('Hello world'))
    ];
  }
}