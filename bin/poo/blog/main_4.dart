void main() {
  
  Autor a1 = Autor('João', 17);
  Autor a2 = Autor('Maria', 21);

  Postagem obj1 = Postagem(a1, 'OO é lindo!', 50, 10);
  Postagem obj2 = Postagem(a2, 'Que massa!!', 99, 15);
  Postagem obj3 = Postagem(a1, 'Ah, objeto!', 10, 40);

  print('-' * 40);
  print('Por: ${obj1.autor.nome} ~ ${obj1.autor.idade} anos');
  print(obj1.conteudo);
  print('Like: ${obj1.qtdLikes} | Dislikes: ${obj1.qtdDislikes}');

  print('-' * 40);
  print('Por: ${obj2.autor.nome} ~ ${obj2.autor.idade} anos');
  print(obj2.conteudo);
  print('Like: ${obj2.qtdLikes} | Dislikes: ${obj2.qtdDislikes}');

  print('-' * 40);
  print('Por: ${obj3.autor.nome} ~ ${obj3.autor.idade} anos');
  print(obj3.conteudo);
  print('Like: ${obj3.qtdLikes} | Dislikes: ${obj3.qtdDislikes}');
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
