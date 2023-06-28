// Timport 'package:flutter/material.dart';
import 'package:app_salao1/screens/home_screen.dart';
import 'package:app_salao1/screens/agendamento_screen.dart';
import 'package:app_salao1/screens/clientes_screen.dart';
import 'package:app_salao1/screens/funcionarios_screen.dart';
import 'package:app_salao1/screens/servicos_screen.dart';

class Routes {
  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => HomeScreen(),
    '/agendamentos': (context) => AgendamentoScreen(),
    '/clientes': (context) => ClientesScreen(),
    '/funcionarios': (context) => FuncionariosScreen(),
    '/servicos': (context) => ServicosScreen(),
  };
}
