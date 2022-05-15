void main() {
  Postagem p1 = Postagem("Foto", 665, 29);
  print(p1.conteudo);
  print(p1.likes);
  print(p1.dislikes);
}

class Postagem {
  String conteudo;
  int dislikes;
  int likes;

  Postagem(this.conteudo, this.dislikes, this.likes);

  /* @comments: 
  *  - O parâmetro likes é desnecessário, visto que só dá 1 like por vez;
  *  - Não precisa retornar a quantidade de likes, pois ...;
  */
  int like(int likes) {
    likes = likes + 1;
    return likes;
  }

  /* @comments: 
  *  - O parâmetro dislikes é desnecessário, visto que só se dá 1 dislike por vez;
  *  - Não precisa retornar a quantidade de dislikes, pois ...;
  */
  int dislike(int dislikes) {
    dislikes = dislikes + 1;
    return likes;
  }
}
