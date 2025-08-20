import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Construtor do App
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      initialRoute: '/', // raiz

      routes: {
        '/': (context) => const Home(),
         //'/test': (context) => const About(),
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Meu Flutinho ',
          style: TextStyle(
              color: Colors.yellow,
              fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: const Text(
        'App do Vaguinho!',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
        ),
      ),
      bottomNavigationBar: const Text('Rodapé de Hello World!'),
    );
  }
}
