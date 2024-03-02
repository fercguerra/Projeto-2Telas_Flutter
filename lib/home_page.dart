// ignore_for_file: avoid_unnecessary_containers, unnecessary_brace_in_string_interps, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutterando/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Home Page"),
        backgroundColor: Color.fromARGB(255, 182, 58, 1),
        actions: [
          // actions- botão que fica na direita.
          CustomSwitch(),
        ],
      ),
      body: Container(
        // container propriedade de largura e altura.
        width: double.infinity,
        height: double.infinity,
        child: Column(
          // column - colunas    Row - linhas
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador:${counter}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 182, 58, 1),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.insance.isDartTheme,
        onChanged: (value) {
          AppController.insance.changeTheme();
        });
  }
}
