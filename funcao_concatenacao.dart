import 'dart:io';
void main(){
  stdout.write("insira uma quantidade: ");
  int quant = int.parse(stdin.readLineSync()!);

  List<String> palavras = [];
  for(int i = 0; i < quant; i++){
    stdout.write("Escreva: ");
    String escreva = stdin.readLineSync()!;
    palavras.add(escreva);
  }
  var mensagem = concatenacao(palavras);
  print(mensagem);
}
String concatenacao(List<String> palavras){
    String juntarString = '';
    for(int i = 0; i < palavras.length; i++){
      juntarString = juntarString + palavras[i];
    }
    return juntarString;
}
