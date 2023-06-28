import 'package:flutter/material.dart';


class AgendamentoScreen extends StatefulWidget {
  final Agendamento agendamento;

  AgendamentoScreen({required this.agendamento});

  get nome => null;

  get servico => null;

  get data => null;

  get horario => null;

  get funcionario => null;

  @override
  _AgendamentoScreenState createState() => _AgendamentoScreenState();
}

class Agendamento {
  String? get nome => null;
  
  String? get data => null;
  
  String? get horario => null;

  String? get id => null;

  static Agendamento fromMap(Map<String, dynamic> data, String id) {}

  Map<String, dynamic> toMap() {}
}

class _AgendamentoScreenState extends State<AgendamentoScreen> {
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _dataController = TextEditingController();
  TextEditingController _horarioController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nomeController.text = widget.agendamento.nome!;
    _dataController.text = widget.agendamento.data!;
    _horarioController.text = widget.agendamento.horario!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agendamento'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nome do cliente:'),
            TextField(
              controller: _nomeController,
            ),
            SizedBox(height: 16.0),
            Text('Data:'),
            TextField(
              controller: _dataController,
            ),
            SizedBox(height: 16.0),
            Text('Horário:'),
            TextField(
              controller: _horarioController,
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Implementar ação de salvar
                  },
                  child: Text('Salvar'),
                ),
                SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Implementar ação de excluir
                  },
                  child: Text('Excluir'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
