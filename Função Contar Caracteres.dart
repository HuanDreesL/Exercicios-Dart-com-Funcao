import 'dart:io';
void main() {

  stdout.write("Escreva uma Palavra: ");
  String palavra = stdin.readLineSync()!;

  var mensagem = contarLetra(palavra);
  print(mensagem);
}
int contarLetra(String palavra){
  
  int numeroDeCaracteres = 0;

  for (int i = 0; i < palavra.length; i++) {
    if (palavra[i] != ' ') {
      numeroDeCaracteres++;
    }
  }
  return numeroDeCaracteres;
}
