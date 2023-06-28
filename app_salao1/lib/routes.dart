import 'package:flutter/material.dart';
import 'package:app_salao1/screens/home_screen.dart';
import 'package:app_salao1/screens/funcionarios_screen.dart';
import 'package:app_salao1/screens/servicos_screen.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes() {
    return <String, WidgetBuilder>{
      '/': (BuildContext context) => const HomeScreen(),
      '/agendamentos': (BuildContext context) => AgendamentosScreen(),
      '/funcionarios': (BuildContext context) => const FuncionariosScreen(),
      '/servicos': (BuildContext context) => const ServicosScreen(),
    };
  }
  
  // ignore: non_constant_identifier_names
  static AgendamentosScreen() {}
}