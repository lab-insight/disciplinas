void main() {
  Aluno a1 = Aluno('Sybelle', 9.5, 8);

  print(a1.media());
  print(a1.isAprovado());
  print(a1.nivel());
}

class Aluno {
  /* @comments: 
  *  - Trocar nomeAluno por nome, pois a classe já é Aluno
  */
  String nomeAluno;
  double nota1;
  double nota2;

  Aluno(this.nomeAluno, this.nota1, this.nota2);

  double media() {
    return (nota1 + nota2) / 2;
  }

  String isAprovado() {
    /* @comments: 
    *  - O this é desnecessário aqui
    */

    double media = this.media();
    if (media >= 7) {
      return 'Aprovado!';
    } else {
      return 'Reprovado';
    }
  }

  String nivel() {
    double media = this.media();
    if (media >= 9) {
      return 'ÓTIMO';
    } else if (media >= 7) {
      return 'BOM';
    } else if (media >= 5) {
      return 'EM APRENDIZAGEM';
    } else {
      return 'ALERTA';
    }
  }
}

/* @comments: 
*  - Você pode declarar apenas um main por arquivo
*  - mudei para main2() para não ficar dando erro
*/

void main2() {
  Postagem p1 = Postagem('Comida', 20, 3);
  print(p1.conteudo);

  /* @comments: 
  *  - Opa, o método like() é que deve fazer isso
  */
  p1.qntLike = p1.qntLike + 50;
  print(p1.qntLike);

  /* @comments: 
  *  - Opa, o método dislike() é que deve fazer isso
  */
  p1.qntDeslike = p1.qntLike - (p1.qntDeslike + 2);
  print(p1.qntDeslike);
}

class Postagem {
  String conteudo;
  int qntLike;
  int qntDeslike;

  Postagem(this.conteudo, this.qntLike, this.qntDeslike);

  /* @comments: 
  *  - O método like() deve incremente a variável qntLike em 1;
  *  - Nesse caso não tem retorno
  */
  int like() {
    return qntLike + 1;
  }

  /* @comments: 
  *  - O mesmo do método like;
  */
  int deslike() {
    int like = this.like();
    if (like >= 1) {
      return like - 1;
    } else {
      return like;
    }
  }
}

/* @comments: 
*  - Você pode declarar apenas um main por arquivo
*  - mudei para main3() para não ficar dando erro
*/
void main3() {
  Porteiro restau = Porteiro(65, 34);

  print(restau.qntVagas);
  print(restau.entrar());
  print(restau.sair());
  print(restau.temVaga());
}

class Porteiro {
  int qntMax;
  int qntVagas;

  Porteiro(this.qntMax, this.qntVagas);

  /* @comments: 
  *  - O método deve manipular o valor de qntVagas;
  *  - Sem retorno;
  */
  int entrar() {
    if (qntVagas >= qntMax) {
      return qntMax;
    } else {
      return qntVagas + 1;
    }
  }

  /* @comments: 
  *  - O método deve manipular o valor de qntVagas;
  *  - Sem retorno;
  *  - Deve rebecer a qtd de pessoas;
  */
  int sair() {
    return qntVagas - 1;
  }

  /* @comments: 
  *  - Tá invertido, não?
  *  - Mudando para qntVagasLivres fica melhor;
  */
  bool temVaga() {
    if (qntMax == qntVagas) {
      return false;
    } else {
      return true;
    }
  }
}

/* @comments: 
*  - Você pode declarar apenas um main por arquivo
*  - mudei para main4() para não ficar dando erro
*/
void main4() {
  Carro c1 = Carro('Toyota', 'Hilux', 120, 200);

  print(c1.acelerar());
  print(c1.frear());
  print(c1.parar());
}

class Carro {
  String marca;
  String modelo;
  double velocidade;
  double potencia;

  Carro(this.marca, this.modelo, this.velocidade, this.potencia);

  /* @comments: 
  *  - Faltou receber os parâmetro;
  *  - A implementação não está de acordo com o solicitado;
  */
  double acelerar() {
    double tAceleracao = 1;
    return velocidade + (tAceleracao * potencia);
  }

  /* @comments: 
  *  - Faltou receber os parâmetro;
  *  - A implementação não está de acordo com o solicitado;
  */
  double frear() {
    double tFreacao = 1;
    return (tFreacao * potencia) - velocidade;
  }

  /* @comments: 
  *  - Não tem retorno
  */
  int parar() {
    int velocidade = 0;
    return velocidade;
  }
}
