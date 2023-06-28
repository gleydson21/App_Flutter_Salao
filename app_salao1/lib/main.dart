import 'package:flutter/material.dart';
import 'package:app_salao1/screens/home_screen.dart';
import 'package:app_salao1/screens/agendamento_screen.dart';

void main() {
  final routes = <String, WidgetBuilder>{
    '/': (BuildContext context) => HomeScreen(),
    '/agendamento': (BuildContext context) => AgendamentoScreen(),
  };

  runApp(MyApp(routes));
}

class MyApp extends StatelessWidget {
  final Map<String, WidgetBuilder> routes;

  MyApp(this.routes);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Salão',
      theme: ThemeData(
        primarySwatch: Color.fromARGB(255, 224, 150, 222),
      ),
      routes: routes,
    );
  }
}
