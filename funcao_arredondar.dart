import 'dart:io';

void main() {
  double valor;
  stdout.write("Insira um valor: ");
  valor = double.parse(stdin.readLineSync()!);
var mensagem = valorArredondado(valor);
  print(mensagem);  
}
double valorArredondado(valor){
  double add = 0;

  int valorInt = valor.toInt(); 
  double decimais = (valor - valorInt) * 100; 
  double decimais2 = decimais - (decimais.toInt()); 

  if(decimais2 >= 0.5){ 
    add = 0.01;
  }
  double transInteiro  = valor * 100;
  int valorInteiro = transInteiro.toInt(); 
  double valorRedondo = valorInteiro / 100;  
  valorRedondo = valorRedondo + add;

  return valorRedondo;
 
}
