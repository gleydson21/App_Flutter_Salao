import 'package:flutter/material.dart';
import 'package:app_salao1/models/agendamento.dart';

import 'screens/agendamento_screen.dart';

class AgendamentoScreen extends StatefulWidget {
  final Agendamento agendamento;

  const AgendamentoScreen({Key? key, required this.agendamento})
      : super(key: key);

  @override
  _AgendamentoScreenState createState() => _AgendamentoScreenState();
}

class _AgendamentoScreenState extends State<AgendamentoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agendamento'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nome do cliente: ${widget.agendamento.nomeCliente}',
            ),
            Text(
              'Data: ${widget.agendamento.data}',
            ),
            Text(
              'Hora: ${widget.agendamento.hora}',
            ),
            ElevatedButton(
              onPressed: () {
                // Lógica para confirmar o agendamento
              },
              child: Text('Confirmar'),
            ),
            ElevatedButton(
              onPressed: () {
                // Lógica para cancelar o agendamento
              },
              child: Text('Cancelar'),
            ),
          ],
        ),
      ),
    );
  }
}
