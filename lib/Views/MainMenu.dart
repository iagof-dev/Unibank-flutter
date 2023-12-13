import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Unibank - Página Inicial",
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: const Color(0xFFFF8C32),
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image(
                    image: AssetImage('assets/images/Logo.png'),
                    height: 32,
                  ),
                  Text(
                    'Unibank',
                    style: TextStyle(
                        color: Color.fromARGB(249, 255, 255, 255),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  developer.log("click | menu");
                },
              ),
              actions: [
                IconButton(
                  icon: Image.asset('assets/images/user.png'),
                  onPressed: () {
                    developer.log('click | profile');
                  },
                ),
              ],
            ),
            body: const Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Text('Logado.')],
            ))));
  }
}
