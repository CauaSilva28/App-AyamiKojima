import 'package:flutter/material.dart';

class ProjetosPage extends StatelessWidget {
  const ProjetosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
        children: [
          Text(
            "tela projetos",
          ),
        ],
        ),
      ),
    );
  }
} 