import 'package:flutter/material.dart';
import 'package:app_salao1/models/servico.dart';

class ServicoDetalhesScreen extends StatelessWidget {
  final Servico servico;

  const ServicoDetalhesScreen({super.key, required this.servico});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Serviço'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              servico.nome,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Preço: R\$${servico.preco}',
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
