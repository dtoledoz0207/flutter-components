import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        children: <Widget>[
          _createInput(),
          Divider(),
          _createPerson()
        ],
      ),
    );
  }

  Widget _createInput() {
    return TextField(
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        ),
        counter: Text('Characters ${this._name.length}'),
        hintText: 'Your name',
        labelText: 'Name',
        helperText: 'Only you name',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.person_pin)
      ),
      onChanged: (value) {
        setState(() {
          this._name = value;
        });
      },
    );
  }

  Widget _createPerson() {
    return ListTile(
      title: Text('Your name is: ${this._name}'),
    );
  }
}