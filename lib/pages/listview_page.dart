import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  _ListViewPageState createState() => new _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  List<int> _listNumbers = [1,2,3,4,5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List and Scroll'),
      ),
      body: _createList(),
    );
  }

  Widget _createList() {
    return ListView.builder(
      itemCount: this._listNumbers.length,
      itemBuilder: (BuildContext context, int index) {

        final int image = this._listNumbers[index];

        return FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 300),
          image: NetworkImage('https://picsum.photos/500/300/?image=$image')
        );
      }
    );
  }
}