class Biografia{
  final String? titulo;
  final String subtitulo;
  final String texto;
  final double espacamento;
  final List? imagem;
  final List? tamanhoImg;

  Biografia({
    this.titulo,
    required this.subtitulo,
    required this.texto,
    required this.espacamento,
    this.imagem,
    this.tamanhoImg,
  });
}