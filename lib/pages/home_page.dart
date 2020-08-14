import 'package:flutter/material.dart';
import 'package:components/providers/menu_provider.dart';
import 'package:components/utils/icon_string_util.dart';


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

    //menuProvider.loadData();

    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _items(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _items(List<dynamic> data, BuildContext context) {

    final List<Widget> itemsWidgets = data.map((option) {
      return Column(
        children: <Widget>[
          ListTile(
            leading: getIcon(option['icon']),
            title: Text(option['texto']),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue,),
            onTap: () {

              // *** NAVIGATE TO ONLY ONE PAGE
              /* final route = MaterialPageRoute(builder: (context) => AlertPage());
              Navigator.push(context, route); */

              Navigator.pushNamed(context, option['ruta']);

            },
          ),
          Divider(
            thickness: 2.0,
            color: Colors.blue[100],
          )
        ],
      );
    }).toList();

    return itemsWidgets;

    // *** OTHER WAY TO CREATE WIDGETS WITH A LIST OF ITEMS ***
    /* final List<Widget> options = [];
    data.forEach((opt) {
      final widgetTemp = ListTile(
        leading: Icon(Icons.android, color: Colors.blue,),
            title: Text('${opt['texto']} **'),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue,),
            onTap: () {},
      );

      options..add(widgetTemp)
              ..add(Divider(thickness: 2.0, color: Colors.blue[100],));
    });
    return options; */

  }
}