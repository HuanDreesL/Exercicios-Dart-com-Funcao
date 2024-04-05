import 'dart:io';

void main() {
  List<int> inteiros = [];
  stdout.write("DIGITE A QUANTIDADE DE VALORES: ");
  int quant = int.parse(stdin.readLineSync()!);
  
  for(int i = 1; i <= quant ; i++){
    stdout.write("DIGITE O $i: ");
    int valores = int.parse(stdin.readLineSync()!);
    inteiros.add(valores);
   }
  var mensagem = maiorNumero(inteiros);
  print(mensagem);
} 

int maiorNumero(List<int> inteiros){
  int maior = 0;

  for(var i in inteiros){
    if(i > maior){
      maior = i;
    }
  }
  return maior;
}
