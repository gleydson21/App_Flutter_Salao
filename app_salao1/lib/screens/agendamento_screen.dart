import 'package:flutter/material.dart';

class _AgendamentoScreenState extends State<AgendamentoScreen> {
  // propriedades e métodos da classe

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Agendamento'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nome do Cliente'),
            TextFormField(),
            Text('Data'),
            TextFormField(),
            Text('Horário'),
            TextFormField(),
            SizedBox(height: 16.0),
            RaisedButton(
              child: Text('Salvar'),
              onPressed: () {
                // código para salvar o agendamento
              },
            ),
          ],
        ),
      ),
    );
  }
}
