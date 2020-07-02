int exec(int a, int b, int Function(int, int) fn) {
  return fn(a, b);
}

imprimirProduto(int qtde, {String nome, double preco}) {
  for (var i = 0; i < qtde; i++) {
    print('O produto $nome tem preço R\$$preco!!!');
  }
}

class Produto {
  String nome;
  double preco;

  Produto({this.nome, this.preco = 9.99});

  // Produto(String nome, double preco) {
  //   this.nome = nome;
  //   this.preco = preco;
  // }
}

main() {
  var p1 = Produto(nome: 'Lapis');
  var p2 = Produto(nome: 'Geladeira', preco: 1454.99);

  imprimirProduto(1, nome: p1.nome, preco: p1.preco);
  imprimirProduto(20, nome: p2.nome, preco: p2.preco);

  final r = exec(20, 30, (a, b) => a * b + 100);

  print('O resultado é $r!!!');
  //tipos de variáveis
  int a = 3;
  double b = 3.1;
  bool estaChovendo = true;
  bool estaFrio = false;
  var c = 'Você é muito legal';
  print(c is String);
  print(estaChovendo || estaFrio);
  var nomes = ['Ana', 'Bia', 'Carlos'];
  nomes.add('Daniel');
  nomes.add('Daniel');
  nomes.add('Daniel');
  print(nomes.length);
  print(nomes.elementAt(0));
  print(nomes[5]);
  Set<int> conjunto = {0, 1, 2, 3, 4, 4, 4};
  print(conjunto.length);
  print(conjunto is Set);
  Map<String, double> notasDosAlunos = {'Ana': 9.7, 'Bea': 9.2, 'Carlos': 9.8};
  for (var chave in notasDosAlunos.keys) {
    print('chave = $chave');
  }
  for (var valor in notasDosAlunos.values) {
    print('valor = $valor');
  }

  for (var registro in notasDosAlunos.entries) {
    print('${registro.key} = ${registro.value}');
  }

  dynamic x = 'Teste';
  print(x);
  x = 123;
  print(x);
  x = false;
  print(x);

  final f = 3;
  // f = 4;

  const l = 5;
  // c = 7;
}
