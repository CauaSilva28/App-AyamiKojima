import 'package:flutter/material.dart';

class BiografiaPage extends StatelessWidget {
  const BiografiaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
        children: [
          Text(
            "tela biografia",
          ),
        ],
        ),
      ),
    );
  }
} 