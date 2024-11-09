import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Biografia.dart';

final List<Biografia> biografia = [
  Biografia(
    titulo: "../img/tituloBiografia.png",
    subtitulo:"Sobre mim",
    texto:"   Ayami Kojima é uma artista japonesa conhecida  pelas aclamadas ilustrações e designs de  personagens da série de videogames Castlevania. Digno de nota, ela é uma autodidata que desenvolveu uma rotina de técnicas pessoais de desenho que lhe rendeu um estilo bastante distinto, destacado em vários livros de técnicas artísticas.",
    espacamento:15,
    imagem: "../img/imgBiografia.png",
  ),

  Biografia(
    subtitulo:"Como tudo começou?",
    texto:"   Foi freelancer (Design e Ilustradora) de capas de livros e revistas antes de começar a trabalhar para games. Seus primeiros trabalhos foram ilustrando capas para vários romances, como: Kuronuma Odile, Cluster saga, Ranryouou, silver requiem, island of depraved angels, alexandrite e nobunaga´s ambition. Kojima também fazia ilustrações preto e branco, como: Chamber of Commerce series. E fez alguns character designs para os livros do Kikuchi hideyuki, criador de vampire hunter D, como: Majin, Ranken, Yig, Youmaki, Hunting the Shadows e Blue runner.",
    espacamento:15,
  ),

  Biografia(
    subtitulo:"Golden Age",
    texto:"",
    espacamento:0,
    imagem: "../img/imgBiografia1.png",
  ),

  Biografia(
    subtitulo:"Curiosidades",
    texto:"   Possuí fascínio por filmes assustadores, cirurgias e coisas macabras. \n    É fã de mangás shounen.",
    espacamento:15,
  ),
];

class BiografiaPage extends StatelessWidget {
  const BiografiaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: 280,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('../img/imgCapaBiografia.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                
                Positioned(
                  top: 200, // Ajuste este valor para posicionar a imagem como desejar
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Image(
                      image: AssetImage(biografia[0].titulo!),
                      height: 250,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 220),

            Column( 
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: biografia.map((biografia){
                return Padding( 
                  padding: EdgeInsets.fromLTRB(40, 0, 40, 0),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        biografia.subtitulo,
                        style: TextStyle(
                          color: Color.fromARGB(255, 141, 0, 0),
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          fontFamily: "Castoro",
                        ),
                      ),

                      SizedBox(height: biografia.espacamento),

                      Text(
                        biografia.texto,
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 16,
                          fontWeight: FontWeight.w100,               
                        ),
                        textAlign: TextAlign.justify,
                      ),

                      SizedBox(height: biografia.espacamento),

                      if (biografia.imagem != null)
                      Image(
                        image: AssetImage(biografia.imagem!),
                        width: double.infinity, 
                      ),

                      SizedBox(height: 30),
                    ], 
                  ), 
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}