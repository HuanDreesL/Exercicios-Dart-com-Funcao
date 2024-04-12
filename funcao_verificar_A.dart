import 'dart:io';

void main() {
  
  stdout.write("Insira a Quantidade:");
  int quant = int.parse(stdin.readLineSync()!);

  List<String> palavras = [];
  for(int i = 0; i < quant; i++){
    stdout.write("Escreva: ");
    String escreva = stdin.readLineSync()!;
    palavras.add(escreva);
  }
 
  var mensagem = verificaPalavras(palavras);
  print("Tem ${mensagem.length} palavras com A e são $mensagem");
}

  List<String> verificaPalavras(List<String> palavras){
    List<String> palavrasComA = [];
    for(int i = 0; i < palavras.length; i++){
      if(palavras[i][0] == 'A' || palavras[i][0] == 'a'){
        palavrasComA.add(palavras[i]);
      }
    }
    return palavrasComA;
  }


