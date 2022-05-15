void main() {
  Porteiro fila = Porteiro(500, 350);

  fila.entrar();
  print("VAGAS DISPONÍVEIS: ${fila.qtdLv}");

  fila.sair();
  print("VAGAS DISPONÓVEIS: ${fila.qtdLv}");

  bool rstd = fila.temVaga();
  print("HÁ VAGAS DISPONÍVEIS: ${rstd}");
}

class Porteiro {
  int qtdMx;
  int qtdLv;

  Porteiro(this.qtdMx, this.qtdLv);

  /* @comments: 
  *  - Faltou verificar se ainda cabe alguém;
  */
  void entrar() {
    qtdLv = qtdLv - 1;
  }

  /* @comments: 
  *  - Faltou receber os parâmetro referente à qtd de pessoas;
  */
  void sair() {
    qtdLv = qtdLv + 1;
  }

  /* @comments: 
  *  - Em tese, qtdLv vai ser sempre menor que qtdMx;
  */
  bool temVaga() {
    if (qtdLv < qtdMx) {
      return true;
    } else {
      return false;
    }
  }
}
