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

  var mensagem = contarCaracteres(palavras);
  print("As quantidade de palavras que tem mais de cinco caracteres ${mensagem.length}");
}
  List<String> contarCaracteres(List<String> palavras){

    List<String> listaPalavras5 = [];    
    for(int i = 0; i < palavras.length; i++){

      if(palavras[i].length > 5){
        listaPalavras5.add(palavras[i]);
      }
    }
    return listaPalavras5;

}



