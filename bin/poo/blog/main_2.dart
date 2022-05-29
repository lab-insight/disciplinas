void main() {

  Postagem obj1 = Postagem('OO é lindo!', 50, 10);
  Postagem obj2 = Postagem('Que massa!!', 99, 15);
  Postagem obj3 = Postagem('Ah, objeto!', 10, 40);

  print('-'*40);
  print(obj1.conteudo);
  print('Like: ${obj1.qtdLikes} | Dislikes: ${obj1.qtdDislikes}');

  print('-'*40);
  print(obj2.conteudo);
  print('Like: ${obj2.qtdLikes} | Dislikes: ${obj2.qtdDislikes}');

  print('-'*40);
  print(obj3.conteudo);
  print('Like: ${obj3.qtdLikes} | Dislikes: ${obj3.qtdDislikes}');

}

class Postagem {

  String conteudo;
  int qtdLikes;
  int qtdDislikes;

  Postagem(this.conteudo, this.qtdLikes, this.qtdDislikes);

  void like() {
    qtdLikes++;
  }

  void dislike() {
    qtdDislikes++;
  }

}