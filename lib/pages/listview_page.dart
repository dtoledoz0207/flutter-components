import 'package:flutter/material.dart';
import 'dart:async';

class ListViewPage extends StatefulWidget {
  _ListViewPageState createState() => new _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  ScrollController _scrollController = new ScrollController();

  List<int> _listNumbers = new List();
  int _lastItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    _addTen();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List and Scroll'),
      ),
      body: Stack(
        children: <Widget>[
          _createList(),
          _createLoading()
        ],
      ),
    );
  }

  Widget _createList() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _listNumbers.length,
      itemBuilder: (BuildContext context, int index) {

        final int image = _listNumbers[index];

        return FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 300),
          image: NetworkImage('https://picsum.photos/500/300/?image=$image')
        );
      }
    );
  }

  void _addTen() {
    for (int i = 1; i < 10; i++) {
      _lastItem++;
      _listNumbers.add(_lastItem);
    }

    //print(_listNumbers.last);
    setState(() {});
  }

  Future fetchData() async {
    setState(() {
      _isLoading = true;
    });

    final duration = new Duration(seconds: 2);
    return new Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP() {
    _isLoading = false;

    _scrollController.animateTo(
      _scrollController.position.pixels + 80,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 250)
    );

    _addTen();
  }

  Widget _createLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator()
            ],
          ),
          SizedBox(height: 10.0)
        ],
      );
    } else {
      return Container();
    }
  }
}