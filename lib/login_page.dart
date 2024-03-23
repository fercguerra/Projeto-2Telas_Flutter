// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, unused_import, unnecessary_import

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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  height: 300,
                  child: Image.asset('/imagem/logo.png'),
                ),
                Container(height: 20),
                Card(
                  // apenas um filho
                  child: Padding(
                    padding: const EdgeInsets.all(
                        10.0), // aredondamento nas laterais.
                    child: Column(
                      // column que aceita mais filhos
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
                                foregroundColor:
                                    Color.fromARGB(255, 248, 0, 95)),
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
                            child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  'Entrar',
                                  textAlign: TextAlign.center,
                                ))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
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
          child: Image.asset('/imagem/screen-0.jpg', fit: BoxFit.cover),
        ),
        Container(color: Colors.black.withOpacity(0.2)),
        body()
      ],
    ));
  }
}
