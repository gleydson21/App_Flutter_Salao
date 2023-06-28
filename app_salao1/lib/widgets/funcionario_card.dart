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
        leading: Icon(Icons.person),
        title: Text(funcionario.nome),
        subtitle: Text(funcionario.especialidade),
        trailing: IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {
            // Lógica para editar o funcionário
          },
        ),
      ),
    );
  }
}
