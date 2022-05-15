void main() {
  // #01
  Aluno aluno = Aluno('Diego', 10, 10);

  print('Nome do aluno: ${aluno.nome}');
  print('Média: ${aluno.media()}');
  print('Estado do aluno: ${aluno.isAprovado()}');
  print('Nivel do Aluno: ${aluno.nivelAluno()}');

  print('');

  // #02
  Postagem postagem = Postagem('Futeboll', 20, 11);
  print('Conteúdo: ${postagem.conteudo}');
  print('Likes: ${postagem.quantidadeLikes}');
  print('Dislikes: ${postagem.quantidadeDislikes}');

  postagem.dislikes();
  postagem.likes();

  print('Likes: ${postagem.quantidadeLikes}');
  print('Dislikes: ${postagem.quantidadeDislikes}');

  print('');

  // #03
  Porteiro porteiro = Porteiro(10, 6);
  print("Total de vagas: ${porteiro.quantidadeMax}");
  print('Total de vagas livres: ${porteiro.quantidadeVagasLivres}');

  porteiro.sair(2);
  porteiro.entrar();
  /* OBS: Use somente os métodos entrar e sair para manipular a variável */
  porteiro.quantidadeVagasLivres = 11;

  print('Total de vagas livres: ${porteiro.quantidadeVagasLivres}');
  print('Tem vaga: ${porteiro.temvaga()}');

  print('');

  // #04
  Carro carro = Carro('BMW', 'BMW X', 650, 6);

  print('Macar: ${carro.marcar}');
  print('Modelo: ${carro.modelo}');
  print('velorcidade: ${carro.velocidade}');
  print('potencia do motor: ${carro.potencia_motor}');

  carro.acelerar(5.45);

  print('velorcidade: ${carro.velocidade}');

  carro.frear(3.5);

  print('velorcidade: ${carro.velocidade}');

  carro.parar();

  print('velorcidade: ${carro.velocidade}');
}

class Aluno {
  String nome;
  double nota1;
  double nota2;

  // Construtor
  Aluno(this.nome, this.nota1, this.nota2);

  // Média do aluno
  double media() {
    return (nota1 + nota2) / 2;
  }

  String isAprovado() {
    /* OBS: O this é desnecessário */
    double media = this.media();
    if (media >= 7) {
      return 'Aprovado';
    } else {
      return 'Reprovado';
    }
  }

  String nivelAluno() {
    /* OBS: Verificar o < é desnecessário */
    double media = this.media();
    if (media >= 9) {
      return 'Ótimo';
    } else if (media < 9 && media >= 7) {
      return 'Bom';
    } else if (media < 7 && media >= 5) {
      return 'Em aprendizagem';
    } else {
      return 'Em alerta';
    }
  }
}

class Postagem {
  String conteudo;
  int quantidadeLikes;
  int quantidadeDislikes;

  // Construtor
  Postagem(this.conteudo, this.quantidadeLikes, this.quantidadeDislikes);

  // Metordo
  void likes() {
    quantidadeLikes += 1;
  }

  void dislikes() {
    quantidadeDislikes += 1;
  }
}

class Porteiro {
  int quantidadeMax;
  int quantidadeVagasLivres;

  // Construtor
  Porteiro(this.quantidadeMax, this.quantidadeVagasLivres);

  // Metodos
  void entrar() {
    /* OBS: Evitar prints; Se quiser dar um feedback, pode retornar null */
    if (quantidadeVagasLivres > 0) {
      quantidadeVagasLivres--;
    } else {
      print('Não a mais vagas livres');
    }
  }

  void sair(int totalPessoaSair) {
    // Soma o total de pessoas que querem sair mais as vagas livres
    int totalVagas = totalPessoaSair + quantidadeVagasLivres;
    /* OBS: Evitar prints; Se quiser dar um feedback, pode retornar null */
    if (totalVagas <= quantidadeMax) {
      quantidadeVagasLivres += totalPessoaSair;
    } else {
      print("O valor de pessoas que querem sair não é válido!");
    }
  }

  bool temvaga() {
    if (quantidadeVagasLivres < quantidadeMax) {
      return true;
    } else {
      return false;
    }
  }
}

class Carro {
  String marcar;
  String modelo;
  double velocidade;
  /* OBS: potenciaDoMotor */
  double potencia_motor;

  // Construtor
  Carro(this.marcar, this.modelo, this.velocidade, this.potencia_motor);

  // Metodos
  /* OBS: tempoDeAceleracao */
  void acelerar(double tempo_aceleracao) {
    velocidade += potencia_motor * tempo_aceleracao;
  }

  /* OBS: tempoFrear */
  void frear(double tempo_frear) {
    velocidade -= potencia_motor * tempo_frear;
  }

  void parar() {
    velocidade = 0;
  }
}
