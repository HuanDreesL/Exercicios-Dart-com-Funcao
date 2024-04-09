import 'dart:io';

void main() {
  String escreva;

  stdout.write("Informe a Quantidade: ");
  int quant = int.parse(stdin.readLineSync()!);

  List<String> palavras = [];
  for(int i = 0; i < quant;i++){
    stdout.write("Escreva: ");
    escreva = stdin.readLineSync()!;
    palavras.add(escreva);
  }
  var mensagem = exibirPalavraComA(palavras);
  print(mensagem);
}
  List<String> exibirPalavraComA(List<String> palavras){
    
    List<String> palavrasComA = [];
  
    for(String palavras in palavras){
        if(palavras[0] == 'A' || palavras[0] == 'a')
      {
        palavrasComA.add(palavras);
      }
    }
    return palavrasComA;
  }



