import 'package:flutter/material.dart';
import 'package:app_salao1/models/agendamento.dart';
import 'package:app_salao1/repositories/agendamentos_repository.dart';
import 'package:app_salao1/models/agendamento.dart';

class AgendamentoScreen extends StatefulWidget {
  final Agendamento agendamento;

  AgendamentoScreen({Key? key, required this.agendamento}) : super(key: key);

  @override
  _AgendamentoScreenState createState() => _AgendamentoScreenState();
}

class _AgendamentoScreenState extends State<AgendamentoScreen> {
  final _repository = AgendamentosRepository();
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _nomeController;
  late TextEditingController _dataController;
  late TextEditingController _horarioController;

  @override
  void initState() {
    super.initState();
    _nomeController =
        TextEditingController(text: widget.agendamento.nomeCliente);
    _dataController =
        TextEditingController(text: widget.agendamento.data.toString());
    _horarioController =
        TextEditingController(text: widget.agendamento.horario.toString());
  }

  @override
  void dispose() {
    _nomeController.dispose();
    _dataController.dispose();
    _horarioController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agendamento'),
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
                decoration: InputDecoration(
                  labelText: 'Nome do Cliente',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, digite o nome do cliente';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _dataController,
                decoration: InputDecoration(
                  labelText: 'Data',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, digite a data';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _horarioController,
                decoration: InputDecoration(
                  labelText: 'Horário',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, digite o horário';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        DateTime? data =
                            DateTime.tryParse(_dataController.text);
                        if (data != null) {
                          Agendamento agendamento = Agendamento(
                            id: widget.agendamento.id,
                            nomeCliente: _nomeController.text,
                            data: data,
                            horario: TimeOfDay.fromDateTime(
                                DateTime.parse(_horarioController.text)),
                          );
                          bool result =
                              await _repository.saveAgendamento(agendamento);
                          if (result) {
                            Navigator.pop(context);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content:
                                      Text('Erro ao salvar o agendamento')),
                            );
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Data inválida')),
                          );
                        }
                      }
                    },
                    child: Text('Salvar'),
                  ),
                  SizedBox(width: 16.0),
                  ElevatedButton(
                    onPressed: () async {
                      bool result = await _repository
                          .deleteAgendamento(widget.agendamento);
                      if (result) {
                        Navigator.pop(context);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text('Erro ao excluir o agendamento')),
                        );
                      }
                    },
                    child: Text('Excluir'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
