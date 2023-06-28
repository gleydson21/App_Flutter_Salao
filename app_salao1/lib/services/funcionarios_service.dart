import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:app_salao1/models/funcionario.dart';

class FuncionariosService {
  final CollectionReference _funcionariosCollection =
      FirebaseFirestore.instance.collection('funcionarios');

  Stream<List<Funcionario>> getFuncionarios() {
    return _funcionariosCollection
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => Funcionario.fromMap(doc.data(), doc.id))
            .toList())
        .asBroadcastStream();
  }

  Future<void> addFuncionario(Funcionario funcionario) {
    return _funcionariosCollection.add(funcionario.toMap());
  }

  Future<void> updateFuncionario(Funcionario funcionario) {
    return _funcionariosCollection
        .doc(funcionario.id)
        .update(funcionario.toMap());
  }

  Future<void> deleteFuncionario(String id) {
    return _funcionariosCollection.doc(id).delete();
  }
}
