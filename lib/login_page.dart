// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, unused_import, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterando/home_page.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String email = '';
  String password = '';

  Widget body() {
    return SingleChildScrollView(
      child: SizedBox(
        //pode usar Container tb
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(6.0), // aredondamento nas laterais.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                height: 300,
                child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/a/ab/Logo_TV_2015.png'),
              ),
              Container(height: 20),
              Card(
                child: Padding(
                  padding:
                      const EdgeInsets.all(10.0), // aredondamento nas laterais.
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (text) {
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'Email', border: OutlineInputBorder()),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        obscureText: true,
                        onChanged: (text) {
                          password = text;
                        },
                        decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(height: 15),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Color.fromARGB(255, 248, 0, 95)),
                          onPressed: () {
                            if (email == 'elder_giov@hotmail.com' &&
                                password == '123') {
                              Navigator.of(context)
                                  .pushReplacementNamed('/home');
                              // Navigator.of(context).pushReplacement(MaterialPageRoute(
                              //  builder: (context) => HomePage()));
                              // ROTA MANUAL ENTRE TELAS
                              if (kDebugMode) {
                                print('login valido');
                              }
                            } else {
                              if (kDebugMode) {
                                print('Login invalido');
                              }
                            }
                          },
                          child: Text('Entrar')),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.network(
              'https://images.unsplash.com/photo-1708555205842-f38972eed725?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              fit: BoxFit.cover),
        ),
        Container(color: Colors.black.withOpacity(0.3)),
        body()
      ],
    ));
  }
}
