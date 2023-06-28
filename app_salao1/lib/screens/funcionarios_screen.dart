import 'package:flutter/material.dart';

class FuncionariosScreen extends StatelessWidget {
  const FuncionariosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Funcionários'),
      ),
      body: const Center(
        child: Text('Tela de Funcionários'),
      ),
    );
  }
}
