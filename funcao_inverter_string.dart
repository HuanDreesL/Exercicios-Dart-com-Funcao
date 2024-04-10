import 'dart:io';
void main(){
String palavra;

  stdout.write("Escreva: ");
  palavra = stdin.readLineSync()!;

var mensagem = palavraInvertida(palavra);
  print(mensagem);
}

String palavraInvertida(String palavra){
  String inverter = '';
  for(int i = palavra.length -1; i >= 0; i-- ){
    inverter += palavra[i];
  }
  return inverter;
}

