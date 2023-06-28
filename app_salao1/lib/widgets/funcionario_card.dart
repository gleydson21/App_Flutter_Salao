import 'package:flutter/material.dart';
import 'package:app_salao1/models/funcionario.dart';

class FuncionarioCard extends StatelessWidget {
  final Funcionario funcionario;

  const FuncionarioCard({Key? key, required this.funcionario})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.person),
        title: Text(funcionario.nome),
        subtitle:
            Text(funcionario.especialidade ?? 'Especialidade não definida'),
        trailing: IconButton(
          icon: const Icon(Icons.edit),
          onPressed: () {
            // Lógica para editar o funcionário
          },
        ),
      ),
    );
  }
}
