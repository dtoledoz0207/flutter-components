import 'package:flutter/material.dart';

//import 'package:components/pages/home_temp.dart';
import 'package:components/routes/routes.dart';
import 'package:components/pages/alert_page.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components App',
      //home: HomePage()
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamada: ${settings.name}');

        return MaterialPageRoute(builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
