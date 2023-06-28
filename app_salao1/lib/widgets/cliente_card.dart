import 'package:flutter/material.dart';
import 'package:app_salao1/models/cliente.dart';

class ClienteCard extends StatelessWidget {
  final Cliente cliente;

  const ClienteCard({Key? key, required this.cliente}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text(cliente.nome),
        subtitle: Text(cliente.telefone),
        trailing: IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {
            // Lógica para editar o cliente
          },
        ),
      ),
    );
  }
}
