import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alerts Page'),),
      body: Center(
        child: RaisedButton(
          child: Text('Show Alert'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => _showAlert(context)
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        }
      ),
    );
  }


  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          title: Text('Tile'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('This is the alert content body'),
              FlutterLogo(size: 100.0,)
            ],
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel')
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Ok')
            ),
          ],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        );
      }
    );
  }
}
