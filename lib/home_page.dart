// ignore_for_file: avoid_unnecessary_containers, unnecessary_brace_in_string_interps, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/foundation.dart';
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
      drawer: Drawer(
        // botao lateral esquerdo
        child: SingleChildScrollView(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  //informação do cabeçalho a esquerda
                  currentAccountPicture: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        40), // #ClipOval# outra forma de deixa a foto circular
                    child: Image.asset('/imagem/logo2.jpg'),
                    //image no cabeçalho lateral esquerdo.
                  ),
                  accountName: Text('Elder'),
                  accountEmail: Text('elder_giov@hotmail.com')),
              ListTile(
                // lista lateral ersquerda
                leading: Icon(Icons.home),
                title: Text('Inicio'),
                subtitle: Text('Tela de inicio'),
                onTap: () {
                  // função click chama algo
                  if (kDebugMode) {
                    print('Home');
                  }
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Logout'),
                subtitle: Text('Finaliza sessão'),
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed('/'); // limpar a tela anterior
                  if (kDebugMode) {
                    print('Home');
                  }
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text(" Home Page"),
        backgroundColor: Color.fromARGB(255, 9, 155, 199),
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
            SizedBox(child: Text('Contador:${counter}')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 9, 155, 199),
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
