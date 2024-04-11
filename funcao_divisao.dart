import 'dart:io';
void main(){

  stdout.write("Insira o Primeiro Valor: ");
  double N1 = double.parse(stdin.readLineSync()!);
  stdout.write("Insira o Segundo Valor: ");
  double N2 = double.parse(stdin.readLineSync()!);
  
  var mensagem = divisaoValores(N1, N2);
  print(mensagem);

}
  double divisaoValores(double N1,N2){
    double divisao;
    if(N2 == 0){
      print("Não é possivel dividir número por ZERO!");
    }
    divisao = N1 / N2; 
    return divisao;
  }
