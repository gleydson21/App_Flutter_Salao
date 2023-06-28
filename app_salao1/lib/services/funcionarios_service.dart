import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:app_salao1/models/funcionario.dart';

class FuncionariosService {
  final CollectionReference _funcionariosCollection =
      FirebaseFirestore.instance.collection('funcionarios');

  Stream<List<Funcionario>> getFuncionarios() {
    // Cria um Stream que não emite nenhum evento
    return const Stream.empty();
  }

  Future<void> addFuncionario(Funcionario funcionario) async {
    try {
      await _funcionariosCollection.add(funcionario.toMap());
    } catch (e) {
      throw Exception('Erro ao adicionar funcionário: $e');
    }
  }

  Future<void> updateFuncionario(Funcionario funcionario) async {
    try {
      await _funcionariosCollection
          .doc(funcionario.id)
          .update(funcionario.toMap());
    } catch (e) {
      throw Exception('Erro ao atualizar funcionário: $e');
    }
  }

  Future<void> deleteFuncionario(String id) async {
    try {
      await _funcionariosCollection.doc(id).delete();
    } catch (e) {
      throw Exception('Erro ao excluir funcionário: $e');
    }
  }
}
