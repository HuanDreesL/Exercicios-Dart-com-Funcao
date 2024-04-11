import 'dart:io';

void main() {
  String palavra;

  stdout.write("Escreva a Palavra: ");
  palavra = stdin.readLineSync()!;

  var mensagem = verificarVogais(palavra);
  print(mensagem);
}

  int verificarVogais(String palavra) {
  int contadorVogais = 0;

  for (int i = 0; i < palavra.length; i++) {
    String letra = palavra[i];
    
    if (letra == 'a' || letra == 'e' || letra == 'i' || letra == 'o' || letra == 'u' || letra == 'A' || letra == 'E' || letra == 'I' || letra == 'O' || letra == 'U') {
      contadorVogais++;
    }
  }

  return contadorVogais;
}




