import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Arte.dart';

final List<Arte> arte = [
  Arte(
    titulo: "Processo criativo",
    subtitulo: "Arte",
    descricao:
        "ㅤㅤUm estilo gótico com traços melancólicoas e macabros em uma união sublime entre elegância e obscuridade com linhas finas e detalhes intrincados que dão uma profundidade notável às suas criações. A influência de Gustav Klimt e Egon Schiele é evidente, mas Kojima infunde sua obra com uma modernidade única. Seu horror gótico, atraiu muitos fãs do gênero pela atmosfera envolvente criada através de sombras habilidosas, iluminação dramática e poses dinâmicas. Além de que sua arte virou destaque na indústria por ser extremamente detalhado, original e bem produzido. Além de receber ainda mais crédito por ser uma época que tinha muitas restrições nos gráficos.",
    espacamento: 10,
    img: "../img/imgArte1.png",
  ),
  Arte(
    subtitulo: "Ayami Kojima's workspace",
    descricao: "",
    espacamento: 0,
    img: "../img/imgArte2.png",
  ),
  Arte(
    subtitulo: "Processo de Criação",
    descricao:
        "ㅤㅤSeu Processo artísto consiste em começar com um esboço com pasteis ou bastões Conté, depois introduz sombras com Conté e tinta Nanquim. O fundo é destacado com textura, uma pegada tridimensional com espátulas e pasta modeladora. Em seguida, as cores de base são pintadas com tinta acrílica diluída. No final ela retoca seu trabalho com brilhos feitos por tinta metálica e com um acabamento em polímero brilhante.",
    espacamento: 10,
    img: "../img/imgArte3.png",
  ),
  Arte(
    subtitulo: "Japanese Color Kingdom series",
    descricao:
        "ㅤㅤPor sua arte ser única, Kojima participou de um livro que descreve suas técnicas de desenho, como Japanese Color Kingdom series. Publicado em primeiro de novembro em 1999.",
    espacamento: 10,
    img: "../img/imgArte4.png",
  )
];

class ArtePage extends StatelessWidget {
  const ArtePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Text(
              arte[0]
                  .titulo!, //Para elementos que não são obrigatórios, é preciso colocar o ! no final
              style: TextStyle(
                color: Color.fromARGB(255, 141, 0, 0),
                fontSize: 38,
                fontWeight: FontWeight.bold,
                fontFamily: "Castoro",
              ),
            ),
            Column(
              children: arte.map((arte) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 50),
                    Text(
                      arte.subtitulo,
                      style: TextStyle(
                        color: Color.fromARGB(255, 141, 0, 0),
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        fontFamily: "Castoro",
                      ),
                    ),
                    SizedBox(height: arte.espacamento),
                    Text(
                      arte.descricao,
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 16,
                        fontWeight: FontWeight.w100,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: arte.espacamento),
                    Image(
                      image: AssetImage(arte.img!),
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ],
                );
              }).toList(),
            ),
            const SizedBox(height: 30),

            // Link que direciona para o vídeo
            GestureDetector(
              onTap: () {
                IrParaSite();
              },
              child: Text(
                'Acompanhe em vídeo a sua evolução.',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

Future<void> IrParaSite() async {
  final Uri uri = Uri.parse('https://www.youtube.com/watch?v=29-muYSp0zg');
  if (!await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  )) {
    throw "Cannot launch";
  }
}
