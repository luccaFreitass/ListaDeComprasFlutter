import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {

  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  late List<String> products;
  late List<int> qtd;
  @override
  void initState() {
    products = ["Feijão","Arroz","Açucar","Suco","Macarrão",];
    qtd = [1,2,5,3,1];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lista de compra")),
      body: ListView.builder(
        itemBuilder: (context, index){
          return ListTile(
            title: Text(products[index]),
            subtitle: Text("${qtd[index]}Quantidade"),
          );
        },
      ),
    );
  }
}