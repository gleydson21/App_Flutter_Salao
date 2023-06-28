import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:app_salao1/models/agendamento.dart';

class AgendamentosService {
  final CollectionReference _agendamentosCollection =
      FirebaseFirestore.instance.collection('agendamentos');

  Stream<List<Agendamento>> getAgendamentos() {
    return _agendamentosCollection
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => Agendamento.fromMap(doc.data(), doc.id))
            .toList())
        .asBroadcastStream();
  }

  Future<void> addAgendamento(Agendamento agendamento) {
    return _agendamentosCollection.add(agendamento.toMap());
  }

  Future<void> updateAgendamento(Agendamento agendamento) {
    return _agendamentosCollection
        .doc(agendamento.id)
        .update(agendamento.toMap());
  }

  Future<void> deleteAgendamento(String id) {
    return _agendamentosCollection.doc(id).delete();
  }
}
