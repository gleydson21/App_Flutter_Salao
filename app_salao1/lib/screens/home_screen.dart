import 'package:flutter/material.dart';
import 'package:app_salao1/screens/agendamentos_screen.dart';
import 'package:app_salao1/screens/clientes_screen.dart';
import 'package:app_salao1/screens/funcionarios_screen.dart';
import 'package:app_salao1/screens/servicos_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    AgendamentosScreen(),
    ClientesScreen(),
    FuncionariosScreen(),
    ServicosScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Salão 1'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Agendamentos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Clientes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Funcionários',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Serviços',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink,
        onTap: _onItemTapped,
      ),
    );
  }
}
