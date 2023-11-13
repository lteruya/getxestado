import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReatividadePage extends StatelessWidget {
  ReatividadePage({super.key});

  final _counter = Rx<int>(0);

  //outros exemplos
  final jornadas = RxList(["a", "b", "c"]);
  final aluno = RxMap(
    {
      "id": 111,
      "nome": "teruya",
      "perfil": "master",
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reatividade Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('counter: '),
          Obx(
            () => Text("${_counter.value}"),
          ),
          TextButton(
            onPressed: () {
              _counter.value++;
              _counter.refresh();
            },
            child: const Text('somar 1'),
          )
        ],
      )),
    );
  }
}
