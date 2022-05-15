/* @comments: 
*  - Nome de arquivo em minúsculo ;)
*/

void main() {
  Aluno a1 = Aluno("Gabriel", 6, 8);
  print(a1.nome);

  String media = a1.isAproved();
  print(media);

  String conhecimento = a1.nivel();
  print(conhecimento);
}

class Aluno {
  String nome;
  double nota1;
  double nota2;

  Aluno(this.nome, this.nota1, this.nota2);

  /* @comments: 
  *  - Faltou o método media();
  */

  String isAproved() {
    double media = (nota1 + nota2) / 2;
    if (media >= 7) {
      return "Aprovado";
    } else {
      return "Não aprovado";
    }
  }

  String nivel() {
    double media = (nota1 + nota2) / 2;
    if (media >= 9) {
      return "Ótimo";
    } else if (media >= 7) {
      return "Bom";
    } else if (media >= 5) {
      return "Aprendizagem";
    } else {
      return "Alerta";
    }
  }
}
