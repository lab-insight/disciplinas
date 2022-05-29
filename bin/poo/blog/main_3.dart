void main() {

  Autor a1 = Autor('Gustavo', 16);

  Postagem obj1 = Postagem(a1, 'OO é lindo!', 99, 0);
  print('Autor: ${obj1.autor.nome}');
  print('Likes: ${obj1.qtdLikes}');

  obj1.like();
  print('Likes: ${obj1.qtdLikes}');
  print('Likes: ${obj1.qtdDislikes}');

  obj1.dislike();
  print('Likes: ${obj1.qtdLikes}');
  print('Likes: ${obj1.qtdDislikes}');

}

class Autor {
  
  String nome;
  int idade;

  Autor(this.nome, this.idade);
}

class Postagem {

  Autor autor;
  String conteudo;
  int qtdLikes;
  int qtdDislikes;

  Postagem(this.autor, this.conteudo, this.qtdLikes, this.qtdDislikes);

  void like() {
    qtdLikes++;
  }

  void dislike() {
    qtdDislikes++;
  }

}