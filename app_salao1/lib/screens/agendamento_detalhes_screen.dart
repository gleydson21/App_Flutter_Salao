import 'package:app_salao1/screens/agendamento_screen.dart';
import 'package:flutter/material.dart';

class AgendamentoDetalhesScreen extends StatelessWidget {
  final Agendamento agendamento;

  const AgendamentoDetalhesScreen({super.key, required this.agendamento});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do agendamento'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nome do cliente: ${agendamento.nome}',
              style:
                  const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Data: ${agendamento.data}',
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Horário: ${agendamento.horario}',
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Implementar ação de editar
                  },
                  child: const Text('Editar'),
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
