class Projetos{
  final String? titulo;
  final String categoria;
  final String subCategoria;
  final List? subtitulo;
  final List descricao;
  final List imagem;
  final List? tamanhoImg;

  Projetos({
    this.titulo,
    required this.categoria,
    required this.subCategoria,
    this.subtitulo,
    required this.descricao,
    required this.imagem,
    this.tamanhoImg,
  });
}