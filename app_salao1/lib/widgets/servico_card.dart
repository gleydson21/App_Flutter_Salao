import 'package:flutter/material.dart';
import 'package:app_salao1/models/servico.dart';

class ServicoCard extends StatelessWidget {
  final Servico servico;

  const ServicoCard({Key? key, required this.servico}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.work),
        title: Text(servico.nome),
        subtitle: Text('R\$ ${servico.preco}'),
        trailing: IconButton(
          icon: const Icon(Icons.edit),
          onPressed: () {
            // Lógica para editar o serviço
          },
        ),
      ),
    );
  }
}
