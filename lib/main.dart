import 'package:flutter/material.dart';
import 'dart:developer' as developer;
import 'package:unibank/Views/MainMenu.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Unibank',
    home: Login(),
  ));
}

class Login extends StatelessWidget {
  String titulo = "Unibank";
  Image img = Image.asset('assets/images/Logo.png');
  TextEditingController txtUser = TextEditingController();
  TextEditingController txtPass = TextEditingController();

  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFF8C32),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 120,
                decoration:
                    BoxDecoration(image: DecorationImage(image: img.image))),
            Text(
              titulo,
              style: const TextStyle(fontSize: 40),
            ),
            Stack(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(50, 0, 0, 35),
                  child: Text(
                    "Usuário:",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 5, 50, 0),
                  child: TextField(
                    controller: txtUser,
                    style: const TextStyle(fontSize: 15),
                    maxLines: 1,
                    minLines: 1,
                    autocorrect: false,
                  ),
                )
              ],
            ),
            Stack(children: [
              const Padding(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 35),
                  child: Text(
                    "Senha:",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    controller: txtPass,
                  )),
            ]),
            Container(
                height: 40,
                width: 300,
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: ElevatedButton(
                    onPressed: () {
                      verifyAccount(context, txtUser, txtPass);
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    child: const Text('Logar'))),
            const Center(
              child: Text(
                'Não possui registro?',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            )
          ],
        )));
  }

  bool verifyAccount(BuildContext ctx, TextEditingController user,
      TextEditingController pass) {
    if (user.text == "" || pass.text == "") {
      return false;
    }

    if (user.text == "usuario" && pass.text == "123") {
      developer.log('Usuário acertou a senha');
      user.clear();
      pass.clear();
      Navigator.push(
          ctx, MaterialPageRoute(builder: (ctx) => const MainMenu()));
      return true;
    } else {
      developer.log('Usuário errou usuario ou senha...');
      return false;
    }
  }
}
