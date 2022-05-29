void main() {

  Postagem obj1 = Postagem('OO é lindo!', 0, 0);
  print('#1: Likes: ${obj1.qtdLikes} - Dislikes: ${obj1.qtdDislikes}');

  obj1.like();
  print('#2: Likes: ${obj1.qtdLikes} - Dislikes: ${obj1.qtdDislikes}');

  obj1.dislike();
  print('#3: Likes: ${obj1.qtdLikes} - Dislikes: ${obj1.qtdDislikes}');

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