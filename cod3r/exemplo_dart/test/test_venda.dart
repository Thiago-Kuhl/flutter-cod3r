import '../model/cliente.dart';
import '../model/item.dart';
import '../model/produto.dart';
import '../model/venda.dart';

main() {
  var venda = Venda(
    cliente: Cliente(
      nome: 'Thiago',
      cpf: "451.639.638.64"
    ),
    itens: <Item>[
      Item(
        quantidade: 5,
        produto: Produto(
          codigo: 34,
          desconto: 0.2,
          nome: 'Caneta',
          preco: 10.00
        )
      ),
      Item(
        quantidade: 10,
        produto: Produto(
          codigo: 67,
          nome: 'Borracha',
          preco: 5.00,
          desconto: 0.5
        )
      )
    ]
  );

  print("O valor total da venda é R\$${venda.valorTotal}");
}
