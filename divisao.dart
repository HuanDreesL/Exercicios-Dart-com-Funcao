import 'dart:io';
void main(){

  stdout.write("Insira o Primeiro Valor: ");
  double N1 = double.parse(stdin.readLineSync()!);
  stdout.write("Insira o Segundo Valor: ");
  double N2 = double.parse(stdin.readLineSync()!);

  if(N2 == 0){
    print("Não é possivel dividir número por ZERO!");
  }else{
    var mensagem = divisaoValores(N1, N2);
    print(mensagem);
  }
}
  double divisaoValores(double N1,N2){
    double divisao;
    divisao = N1 / N2; 
    return divisao;
  }