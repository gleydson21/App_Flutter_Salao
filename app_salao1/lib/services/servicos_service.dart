import 'package:cloud_firestore/cloud_firestore.dart';

class Servico {
  final String id;
  final String nome;
  final double preco;
  final int duracao;

  Servico(
      {required this.id,
      required this.nome,
      required this.preco,
      required this.duracao});

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'preco': preco,
      'duracao': duracao,
    };
  }

  factory Servico.fromMap(Map<String, dynamic> map, String id) {
    return Servico(
      id: id,
      nome: map['nome'],
      preco: map['preco'],
      duracao: map['duracao'],
    );
  }

  factory Servico.fromSnapshot(DocumentSnapshot snapshot) {
    return Servico.fromMap(
        snapshot.data() as Map<String, dynamic>, snapshot.id);
  }
}
