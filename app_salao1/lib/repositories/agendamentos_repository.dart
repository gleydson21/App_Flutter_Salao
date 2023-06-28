import 'package:cloud_firestore/cloud_firestore.dart';

import '../screens/agendamento_screen.dart';

class AgendamentosRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<Agendamento>> getAgendamentos() async {
    QuerySnapshot snapshot = await _firestore.collection('agendamentos').get();
    List<Agendamento> agendamentos = [];
    for (var doc in snapshot.docs) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      Agendamento agendamento = Agendamento.fromMap(data, doc.id);
      agendamentos.add(agendamento);
    }
    return agendamentos;
  }

  Future<bool> saveAgendamento(Agendamento agendamento) async {
    try {
      await _firestore
          .collection('agendamentos')
          .doc(agendamento.id)
          .set(agendamento.toMap());
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> deleteAgendamento(Agendamento agendamento) async {
    try {
      await _firestore.collection('agendamentos').doc(agendamento.id).delete();
      return true;
    } catch (e) {
      return false;
    }
  }
}
