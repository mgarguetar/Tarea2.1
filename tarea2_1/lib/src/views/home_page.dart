import 'package:flutter/material.dart';
import 'package:tarea2_1/src/widgets/item_list.dart';
import 'package:tarea2_1/src/widgets/side_menu.dart';
import 'package:tarea2_1/src/api/productos.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reddit'),
      ),
      drawer: SideMenu(),
      body: ListView.builder(
        itemCount: productos.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemList(producto: productos[index]);
        },
      ),
    );
  }
}
