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
              backgroundColor: const Color(0xFFFF8C32),
              title: const Text(
                'Unibank',
                style: TextStyle(color: Color.fromARGB(249, 255, 255, 255)),
              ),
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  developer.log("click | menu");
                },
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.panorama),
                  onPressed: () {
                    developer.log("click | perfil");
                  },
                )
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
