import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:app_salao1/models/cliente.dart';

class ClientesService {
  final CollectionReference _clientesCollection =
      FirebaseFirestore.instance.collection('clientes');

  Stream<List<Cliente>> getClientes() {
    return _clientesCollection
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => Cliente.fromMap(doc.data(), doc.id))
            .toList())
        .asBroadcastStream();
  }

  Future<void> addCliente(Cliente cliente) {
    return _clientesCollection.add(cliente.toMap());
  }

  Future<void> updateCliente(Cliente cliente) {
    return _clientesCollection
        .doc(cliente.id)
        .update(cliente.toMap());
  }

  Future<void> deleteCliente(String id) {
    return _clientesCollection.doc(id).delete();
  }
}