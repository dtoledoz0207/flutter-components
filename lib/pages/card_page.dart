import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardType1(),
          SizedBox(height: 30.0,),
          _cardType2()
        ],
      ),
    );
  }

  Widget _cardType1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.image, color: Colors.blue,),
            title: Text("I'm the title of this card"),
            subtitle: Text('This is an example description for this card and it is to show what kind of things we can do in with the content of this card.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancel'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardType2() {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 300),
            height: 250.0,
            fit: BoxFit.cover,
            image: NetworkImage('https://images3.alphacoders.com/997/997848.jpg')
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Some example text'),
          )
        ],
      ),
    );
  }

}