import 'dart:io';
void main() {

  stdout.write("Escreva uma Palavra: ");
  String palavra = stdin.readLineSync()!;

 contarLetra(palavra);

}
 String contarLetra(String palavra){
  
  String textoInvertido = '';
  for(int i = palavra.length - 1; i >= 0; i--){
      textoInvertido += palavra[i]; 
    }
    print(textoInvertido);
    if(palavra == textoInvertido){
      print("A palavra $palavra é Palindromo");
    }
    else{
      print("A palavra $palavra não é Palindromo");
    }

    return textoInvertido;
  }

