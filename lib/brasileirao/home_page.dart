import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:teste/brasileirao/models/controller.dart';

class homePage extends StatelessWidget {
  var controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brasileirao'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: controller.tabela!.length,
        itemBuilder: (BuildContext contexto, int i) {
          final tabela = controller.tabela;
          return ListTile(
            leading: Image.network(tabela![i].brasao),
            title: Text(tabela[i].nome),
            trailing: Text(tabela[i].pontos.toString()),
          );
        },
        separatorBuilder: (context, index) => Divider(),
        padding: EdgeInsets.all(16),
      ),
    );
  }
}
