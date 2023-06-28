import 'package:flutter/material.dart';

class ServicosScreen extends StatelessWidget {
  const ServicosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Serviços'),
      ),
      body: const Center(
        child: Text('Tela de Serviços'),
      ),
    );
  }
}
