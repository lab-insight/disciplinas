void main(List<String> args) {
  
}

class Artista {
  
  String nome;
  String pais;

  Artista(this.nome, this.pais);

}

class Musica {

  String nome;
  double duracao;
  int views;
  Artista artista;

  Musica(this.nome, this.duracao, this.views, this.artista);

  void tocar() {
    views++;
  }
  
}