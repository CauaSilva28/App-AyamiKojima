class Arte{
  final String? titulo; //O sinal de ? significa que o item nao é obrigatório
  final String subtitulo;
  final String descricao;
  final double espacamento;
  final String? img;

  Arte({
    this.titulo, //Se tiver o ? não precisa colocar o required, pois não é obrigatório
    required this.subtitulo,
    required this.descricao,
    required this.espacamento,
    this.img,
  });
}