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
          _cardType2(),
          SizedBox(height: 30.0,),
          _cardType1(),
          SizedBox(height: 30.0,),
          _cardType2(),
          SizedBox(height: 30.0,),
          _cardType1(),
          SizedBox(height: 30.0,),
          _cardType2(),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }

  Widget _cardType1() {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
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
    final Widget card = Container(
      // This works when the image of card does not have the top border radius
      //clipBehavior: Clip.antiAlias,
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

    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(3.0, 2.0)
          )
        ]
      ),
    );
  }

}