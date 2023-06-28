import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:app_salao1/models/servico.dart';

class ServicosService {
  final CollectionReference _servicosCollection =
      FirebaseFirestore.instance.collection('servicos');

  Stream<List<Servico>> getServicos() {
    return _servicosCollection
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => Servico.fromMap(doc.data(), doc.id))
            .toList())
        .asBroadcastStream();
  }

  Future<void> addServico(Servico servico) {
    return _servicosCollection.add(servico.toMap());
  }

  Future<void> updateServico(Servico servico) {
    return _servicosCollection.doc(servico.id).update(servico.toMap());
  }

  Future<void> deleteServico(String id) {
    return _servicosCollection.doc(id).delete();
  }
}
