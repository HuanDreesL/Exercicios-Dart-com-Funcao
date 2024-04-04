import 'dart:io';

void main() {
  var soma = somaNumeros();
  print(soma);
}

int somaNumeros (){
  stdout.write("DIGITE O PRIMERO VALOR: ");
  int N1 = int.parse(stdin.readLineSync()!);
  stdout.write("DIGITE O PRIMERO VALOR: ");
  int N2 = int.parse(stdin.readLineSync()!);
  return N1 + N2;
}