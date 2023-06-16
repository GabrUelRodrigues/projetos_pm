import 'package:flutter/foundation.dart';
import 'package:providers/domain/item_pedido.dart';
import 'package:providers/util/format.dart';
import '../domain/produto.dart';

class Carrinho extends ChangeNotifier{
  final List<ItemPedido> _itens = [];

  void addItem(Produto produto, int quantidade){
    if (_jaTemProduto(produto)) {
      final position = _itens.indexWhere(findItemByProduto(produto));
      final item = _itens[position];

      _itens[position] = item.changeQuantity(item.quantidade + quantidade);

      notifyListeners();
      return;
    }

    notifyListeners();
    _itens.add(ItemPedido(produto: produto, desconto: 0, preco: produto.preco, quantidade: quantidade));
  }

  bool _jaTemProduto(Produto produto){
    return _itens.where(findItemByProduto(produto)).isNotEmpty;
  }

  bool Function(ItemPedido item) findItemByProduto(Produto produto){
    return (item) => item.produto.id == produto.id;
  }

  List<ItemPedido> get itens => _itens;
  double get total => itens.map((element) => element.total).reduce((value, element) => value + element);
  String get totalFormatado => formatMoney(total);
  int get count => itens.length;
}