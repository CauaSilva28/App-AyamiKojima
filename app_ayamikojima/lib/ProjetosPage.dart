import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'Projetos.dart';

final List<Projetos> projetos = [
  Projetos(
    titulo: '../img/logoAyami.png',
    categoria: 'Jogos',
    subCategoria: 'Castlevania',
    descricao:['ㅤㅤCastlevania conta uma profecia  que a cada 100 anos, quando a humanidade esquece de sua fé em Deus, Dracula retorna à vida. Este trabalho em especifico é sobre o Castlevania Symphony of the Night lançado em 1997 para playstation pela Konami.'],
    imagem: ['../img/castelvaniaArtes.png'],
  ),

  Projetos(
    categoria: 'Jogos',
    subCategoria: 'Soldnerschild',
    descricao:['ㅤㅤSöldnerschild é um jogo de fantasia da Europa medieval com um protagonista mercenário liderando um grupo de mercenários, cujas ações podem moldar o governo e a liderança do país, produzido por Kou Shibusawa e Ayami Kojima. A Koei desenvolveu o título original e a Sega o publicou para o Sega Saturn em 25 de setembro de 1997.'],
    imagem: ['../img/soldArtes.png'],
  ),

  Projetos(
    categoria: 'Jogos',
    subCategoria: 'Dynasty Warriors',
    descricao:['ㅤㅤÉ inspirado em uma parte da história chinesa chamada Três Reinos, que consistia em três reinos com filosofias diferentes mas com o mesmo objetivo de unificar e governar a China. Esses reinos eram Wu, Wei e Shu. Ayami realizou os characters designs do jogo, seu lançamento foi para o Playstation 2 em 20 de setembro de 2001 pela Koei. '],
    imagem: ['../img/dynastyArtes.png'],
  ),

  Projetos(
    categoria: 'Gerais',
    subCategoria: 'Novels',
    subtitulo: [
      'Majin Series',
      'Yig Series',
      'Cluster saga',
      'Ranryouou',
      'Silver Requiem',
      'Island of Depraved Angels',
      'Youmaki Series',
    ],
    descricao:[
      'ㅤㅤCapas da serie Majin do Kikuchi Hideyuki, criador do famoso Vampire Hunter D lançado em 1 setembro 2013 pela editora Tiobukkusu.',
      'ㅤㅤCapas da serie Majin do Kikuchi Hideyuki, criador do famoso Vampire Hunter D.',
      'ㅤㅤIlustrações de capa dos três romances da série Cluster Saga de Piers Anthony. A tradução japonesa, naturalmente.',
      'ㅤㅤIlustrações da capa de um "romance estético" intitulado Ranryouou.',
      'ㅤㅤCapa da serie Silver Requiem sobre um romance gay.',
      'ㅤㅤCapa de Island of Depraved Angels, fala sobre um romance gay.',
      'ㅤㅤCapas da serie Youmaki do Kikuchi Hideyuki, criador do famoso Vampire Hunter D.',
    ],
    imagem: [
      '../img/imgNovels1.png',
      '../img/imgNovels2.png',
      '../img/imgNovels3.png',
      '../img/imgNovels4.png',
      '../img/imgNovels5.png',
      '../img/imgNovels6.png',
      '../img/imgNovels7.png',
    ],
    tamanhoImg: [
      1,
      0.6,
      1,
      0.3,
      0.3,
      0.3,
      1,
    ],
  ),
];

class ProjetosPage extends StatefulWidget {
  const ProjetosPage({super.key});

  @override
  _ProjetosPageState createState() => _ProjetosPageState();
}

class _ProjetosPageState extends State<ProjetosPage> {
  String selectedTab = projetos[0].categoria; // Aba inicial selecionada
  String selectedSubCategoria = projetos[0].subCategoria; // Aba inicial selecionada

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          children: [
            SizedBox(height: 100),

            Image(
              image: AssetImage(projetos[0].titulo!),
              width: 200,
            ),

            SizedBox(height: 60),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _areaBotoesCategoria('Jogos', projetos[0].subCategoria),
                _areaBotoesCategoria('Gerais', projetos[3].subCategoria),
              ],
            ),
            SizedBox(height: 40), // Espaço entre botões e conteúdo
            _conteudoCategorias(), // Conteúdo dinâmico
          ],
        ),
      ),
    );
  }

  Widget _areaBotoesCategoria(String tabName, subSelecionada) {
    bool isSelected = selectedTab == tabName;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            selectedTab = tabName; // Atualiza a aba selecionada
            selectedSubCategoria = subSelecionada;
          });
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, // Cor do texto para ambos os estados
          backgroundColor: Colors.transparent,
        ),
        child: Text(
          tabName,
          style: TextStyle(
            color: isSelected
                ? Color.fromARGB(255, 141, 0, 0)
                : const Color.fromARGB(255, 255, 255, 255), // Cor dinâmica do t
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: "Castoro",
          ),
        ),
      ),
    );
  }

  Widget _areaBotoesSubCategoria(String subCategoriaNome) {
    bool isSelected = selectedSubCategoria == subCategoriaNome;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            selectedSubCategoria =
                subCategoriaNome; // Atualiza a aba selecionada
          });
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, // Cor do texto para ambos os estados
          backgroundColor: Colors.transparent,
          fixedSize: Size(MediaQuery.of(context).size.width * 0.3, 50),
          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
        ),
        child: Text(
          subCategoriaNome,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isSelected
                ? Color.fromARGB(255, 141, 0, 0)
                : const Color.fromARGB(255, 255, 255, 255), // Cor dinâmica do t
            fontSize: 15,
            fontWeight: FontWeight.w500,
            fontFamily: "Castoro",
          ),
        ),
      ),
    );
  }

  Widget _conteudoCategorias() {
    if (selectedTab == 'Jogos') {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: projetos
                .where((projeto) => projeto.categoria == 'Jogos') // Filtra por categoria 'Jogos'
                .map((categoria) {
              return Row(
                children: [
                  _areaBotoesSubCategoria(categoria.subCategoria),
                ],
              );
            }).toList(),
          ),

          SizedBox(height: 20),

          _conteudoSubCategorias(selectedTab, selectedSubCategoria, context)
        ],
      );
    } else if (selectedTab == 'Gerais') {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: projetos
                  .where((projeto) => projeto.categoria == 'Gerais') // Filtra por categoria 'Jogos'
                  .map((categoria) {
                return Row(
                  children: [
                    _areaBotoesSubCategoria(categoria.subCategoria),
                  ],
                );
              }).toList(),
            ),

            SizedBox(height: 30),

            _conteudoSubCategorias(selectedTab, selectedSubCategoria, context)
          ],
        );
    }
    return SizedBox.shrink();
  }
}

Widget _conteudoSubCategorias(selectedTab, selectedSubCategoria, BuildContext context) {
  if (selectedTab == 'Jogos') {
    for(int i = 0; i<3; i++){
      if(selectedSubCategoria == projetos[i].subCategoria){
        return Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            children: [
              Text(
                projetos[i].descricao[0],
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 16,
                  fontWeight: FontWeight.w100,               
                ),        
              ),

              SizedBox(height: 30),

              Image(
                image: AssetImage(projetos[i].imagem[0]),
                width: double.infinity,
                fit: BoxFit.fill,
              ),

              SizedBox(height: 50),
            ],
          ),
        );
      }
    }
  }
  else if (selectedTab == 'Gerais') {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: projetos[3].subtitulo!.asMap().entries.where((entry) => selectedSubCategoria == projetos[3].subCategoria).map((entry) {
          int i = entry.key;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                projetos[3].subtitulo![i],
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: Color.fromARGB(255, 141, 0, 0),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Castoro",
                ),
              ),
              const SizedBox(height: 10),
              Text(
                projetos[3].descricao[i],
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                ),
              ),
              const SizedBox(height: 20),
              Image(
                image: AssetImage(projetos[3].imagem[i]),
                width: MediaQuery.of(context).size.width * projetos[3].tamanhoImg![i],
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 50),
            ],
          );
        }).toList(),
      ),
    );
  }
  return SizedBox.shrink();
}