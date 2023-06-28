import 'package:flutter/material.dart';
import 'package:app_salao1/models/agendamento.dart';

class AgendamentoCard extends StatelessWidget {
  final Agendamento agendamento;

  const AgendamentoCard({Key? key, required this.agendamento})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.calendar_today),
        title: Text(agendamento.servico),
        subtitle: Text(agendamento.dataHora),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            // Lógica para excluir o agendamento
          },
        ),
      ),
    );
  }
}
