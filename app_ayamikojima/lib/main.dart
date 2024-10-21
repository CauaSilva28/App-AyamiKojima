import 'package:app_ayamikojima/ProjetosPage.dart';
import 'package:flutter/material.dart';
import 'ArtePage.dart';
import 'BiografiaPage.dart';
import 'ProjetosPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int telaAtual = 1;

  void trocandoTela(int novaTela) {
    setState(() {
      telaAtual = novaTela;
    });
  }

  final List<Widget> telas = [
    const ArtePage(),
    const BiografiaPage(),
    const ProjetosPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Stack(
        children: [
          // Imagem de fundo fixa
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('../img/fundo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Conteúdo das telas
          telas[telaAtual],
        ],
      ),

      bottomNavigationBar: ClipRRect(

        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      
        child: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 141, 0, 0),
          currentIndex: telaAtual,
          onTap: trocandoTela,
          selectedItemColor: Colors.white, // Cor para o item selecionado
          unselectedItemColor: const Color.fromARGB(255, 0, 0, 0), // Cor para os itens não selecionados
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.palette_outlined),
              label: "Arte",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: "Biografia",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.next_week),
              label: "Projetos",
            ),
          ],
        ),
      ),
    );
  }
}