import 'dart:io';

void main() {
  int quantidade;
  String escreva;

  stdout.write("Insira a Quantidade: ");
  quantidade = int.parse(stdin.readLineSync()!); 

  List<String> palavras = [];
  for(int i = 0; i < quantidade; i++){    
    stdout.write("Escreva: ");
    escreva = stdin.readLineSync()!; 
    palavras.add(escreva);
  }
  var mensagem = palavrasMaior(palavras);
  print("A palavra $mensagem é a mais longa pois possui ${mensagem.length} caracteres");
}
  String palavrasMaior(List<String> palavras){
    String maiorString = '';    
      for(int i = 0; i < palavras.length; i++){
        if(palavras[i].length > maiorString.length){
          maiorString = palavras[i];
        }
      } 
    return maiorString;

}



