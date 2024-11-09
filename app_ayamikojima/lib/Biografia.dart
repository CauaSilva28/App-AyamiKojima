class Biografia{
  final String? titulo;
  final String subtitulo;
  final String texto;
  final double espacamento;
  final String? imagem;

  Biografia({
    this.titulo,
    required this.subtitulo,
    required this.texto,
    required this.espacamento,
    this.imagem,
  });
}