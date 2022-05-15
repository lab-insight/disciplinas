/* @comments: 
*  - E os testes?
*/
void main() {}

class Porteiro {
  int qtdMax;
  int qtdLivre;

  Porteiro(this.qtdMax, this.qtdLivre);

  /* @comments: 
  *  - Faltou verificar se ainda cabe alguém;
  */
  void entrar() {
    qtdLivre = qtdLivre - 1;
  }

  /* @comments: 
  *  - Faltou receber os parâmetro referente à qtd de pessoas;
  */
  void sair() {
    qtdLivre = qtdLivre + 1;
  }

  /* @comments: 
  *  - Em tese, qtdLivre vai ser sempre menor que qtdMax;
  */
  bool temVaga() {
    if (qtdLivre < qtdMax) {
      return true;
    } else
      return false;
  }
}
