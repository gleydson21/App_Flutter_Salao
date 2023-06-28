import 'package:app_salao1/screens/agendamento_screen.dart';
import 'package:flutter/material.dart';

class AgendamentoCard extends StatelessWidget {
  final Agendamento agendamento;
  final void Function()? onDelete;

  const AgendamentoCard({Key? key, required this.agendamento, this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.calendar_today),
        title: Text(
          agendamento.nome?? 'Nome não definido',
        ),
        subtitle: Text(agendamento.dataHora ?? 'Data e hora não definidas'),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: onDelete,
        ),
      ),
    );
  }
}
