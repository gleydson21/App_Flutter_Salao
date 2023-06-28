import 'package:flutter/material.dart';

import 'screens/agendamento_screen.dart';

class AgendamentoScreen extends StatefulWidget {
  final Agendamento agendamento;

  const AgendamentoScreen({Key? key, required this.agendamento})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AgendamentoScreenState createState() => _AgendamentoScreenState();
}

class _AgendamentoScreenState extends State<AgendamentoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agendamento'),
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
              child: const Text('Confirmar'),
            ),
            ElevatedButton(
              onPressed: () {
                // Lógica para cancelar o agendamento
              },
              child: const Text('Cancelar'),
            ),
          ],
        ),
      ),
    );
  }
}
