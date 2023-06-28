class Servico {
  final String id;
  final String nome;
  final double preco;

  Servico({
    required this.id,
    required this.nome,
    required this.preco,
  });

  factory Servico.fromMap(Map<String, dynamic> map) {
    return Servico(
      id: map['id'],
      nome: map['nome'],
      preco: map['preco'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'preco': preco,
    };
  }
}
