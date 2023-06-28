import 'package:flutter/material.dart';
import 'package:app_salao1/models/agendamento.dart';
import 'package:app_salao1/repositories/agendamentos_repository.dart';
import 'package:app_salao1/screens/agendamento_detalhes_screen.dart';

import '../screens/agendamento_screen.dart';

class AgendamentoScreen extends StatefulWidget {
  @override
  _AgendamentoScreenState createState() => _AgendamentoScreenState();
}

class _AgendamentoScreenState extends State<AgendamentoScreen> {
  final _repository = AgendamentosRepository();
  late Future<List<Agendamento>> _agendamentos;

  @override
  void initState() {
    super.initState();
    // Inicia a busca pelos agendamentos
    _agendamentos = _repository.getAgendamentos();
  }

  // Navega para a tela de detalhes do agendamento
  void _verDetalhes(Agendamento agendamento) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            AgendamentoDetalhesScreen(agendamento: agendamento),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agendamentos'),
      ),
      body: FutureBuilder(
        future: _agendamentos,
        builder: (context, snapshot) {
          // Exibe um indicador de progresso enquanto os dados estão sendo carregados
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          // Exibe uma mensagem de erro se ocorrer um erro ao carregar os dados
          else if (snapshot.hasError) {
            return Center(
              child: Text('Erro ao carregar os agendamentos'),
            );
          }
          // Exibe a lista de agendamentos
          else {
            List<Agendamento> agendamentos = snapshot.data as List<Agendamento>;
            return ListView.builder(
              itemCount: agendamentos.length,
              itemBuilder: (context, index) {
                Agendamento agendamento = agendamentos[index];
                return ListTile(
                  title: Text(agendamento.nomeCliente),
                  subtitle:
                      Text('${agendamento.data} - ${agendamento.horario}'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () => _verDetalhes(agendamento),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
