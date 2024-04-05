import 'dart:io';

void main() {
  
  stdout.write("DIGITE O PRIMERO VALOR: ");
  int N1 = int.parse(stdin.readLineSync()!);
  stdout.write("DIGITE O PRIMERO VALOR: ");
  int N2 = int.parse(stdin.readLineSync()!);
  
  var soma = somaNumeros(N1,N2);
  print(soma);
}

int somaNumeros (N1,N2){
  int soma = 0;
  soma = N1 + N2;
  return soma;
}
