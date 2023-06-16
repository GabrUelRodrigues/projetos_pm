import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/presentation/widgets/data_item.dart';
import 'package:providers/presentation/widgets/quantidade.dart';
import 'package:providers/util/catalogo_util.dart';

import '../../domain/produto.dart';
import '../../service/catalogo_service.dart';

class ProdutoPage extends StatefulWidget {
  final int idProduto;

  const ProdutoPage({super.key, required this.idProduto});

  @override
  State<ProdutoPage> createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {
  late int quantidade;

  @override
  Widget build(BuildContext context) {
    final produto = context.select<Catalogo, Produto>(
      (catalogo) => catalogo.withEstoque().firstWhere(matchPorId(widget.idProduto))
    );
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(produto.nome),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                DataItem(label: "Descrição: ", content: produto.descricao),
                DataItem(label: "Preço: ", content: produto.precoFormatado, alignment: Alignment.centerRight,),
                DataItem(label: "Estoque: ", content: produto.estoque.toString(), alignment: Alignment.centerRight)
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              child: Quantidade(
                onChangeQuantidade: (quantidade){},
                min: 0,
                max: produto.estoque
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: SizedBox(
                width: 180,
                child: ElevatedButton(
                  onPressed: (){},
                  child: const Text("Adicionar ao carrinho"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}