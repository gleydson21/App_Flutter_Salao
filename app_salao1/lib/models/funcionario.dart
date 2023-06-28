class Funcionario {
  final String id;
  final String nome;
  final String telefone;
  final String email;

  Funcionario({
    required this.id,
    required this.nome,
    required this.telefone,
    required this.email,
  });

  factory Funcionario.fromMap(Map<String, dynamic> map, String id) {
    return Funcionario(
      id: map['id'],
      nome: map['nome'],
      telefone: map['telefone'],
      email: map['email'],
    );
  }

  String? get especialidade => null;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'telefone': telefone,
      'email': email,
    };
  }
}
