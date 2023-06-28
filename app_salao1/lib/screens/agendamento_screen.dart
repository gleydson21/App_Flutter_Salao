import 'package:flutter/material.dart';

class Agendamento {
  String? nome;
  String? data;
  String? horario;
  String? id;

  Agendamento({this.nome, this.data, this.horario, this.id});

  get nomeCliente => null;

  get hora => null;

  String? get servico => null;

  String? get dataHora => null;

  static Agendamento fromMap(Map<String, dynamic> data, String id) {
    return Agendamento(
      nome: data['nome'],
      data: data['data'],
      horario: data['horario'],
      id: id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'data': data,
      'horario': horario,
    };
  }
}

class AgendamentoScreen extends StatefulWidget {
  final Agendamento agendamento;

  const AgendamentoScreen({super.key, required this.agendamento});

  @override
  // ignore: library_private_types_in_public_api
  _AgendamentoScreenState createState() => _AgendamentoScreenState();
}

class _AgendamentoScreenState extends State<AgendamentoScreen> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _dataController = TextEditingController();
  final TextEditingController _horarioController = TextEditingController();

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
        title: const Text('Agendamento'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Nome do cliente:'),
            TextField(
              controller: _nomeController,
            ),
            const SizedBox(height: 16.0),
            const Text('Data:'),
            TextField(
              controller: _dataController,
            ),
            const SizedBox(height: 16.0),
            const Text('Horário:'),
            TextField(
              controller: _horarioController,
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Implementar ação de salvar
                  },
                  child: const Text('Salvar'),
                ),
                const SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Implementar ação de excluir
                  },
                  child: const Text('Excluir'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
