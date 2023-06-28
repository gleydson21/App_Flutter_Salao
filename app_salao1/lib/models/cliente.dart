class Cliente {
  final String id;
  final String nome;
  final String telefone;
  final String email;

  Cliente({
    required this.id,
    required this.nome,
    required this.telefone,
    required this.email,
  });

  factory Cliente.fromMap(Map<String, dynamic> map) {
    return Cliente(
      id: map['id'],
      nome: map['nome'],
      telefone: map['telefone'],
      email: map['email'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'telefone': telefone,
      'email': email,
    };
  }
}
