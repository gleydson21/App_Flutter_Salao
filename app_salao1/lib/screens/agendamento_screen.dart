import 'package:flutter/material.dart';

class AgendamentoScreen extends StatefulWidget {
  @override
  _AgendamentoScreenState createState() => _AgendamentoScreenState();
}

class _AgendamentoScreenState extends State<AgendamentoScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _dataController = TextEditingController();
  final TextEditingController _horaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agendamento'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _nomeController,
                decoration: const InputDecoration(
                  labelText: 'Nome do cliente',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira o nome do cliente';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _dataController,
                decoration: InputDecoration(
                  labelText: 'Data',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira a data';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _horaController,
                decoration: InputDecoration(
                  labelText: 'Hora',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira a hora';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              Center(
                child: RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      // TODO: Adicionar lógica de agendamento
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Agendamento realizado')),
                      );
                    }
                  },
                  child: Text('Agendar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
