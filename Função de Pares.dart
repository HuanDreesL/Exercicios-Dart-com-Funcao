import 'dart:io';

void main() {
  print("Digite a quantidade de números da lista: ");
  int tamanho = int.parse(stdin.readLineSync()!);
  
  List<int> inteiros = [];
  
  for (int i = 1; i <= tamanho; i++) {
    stdout.write("Digite o $i° número: ");
    int valor = int.parse(stdin.readLineSync()!);
    inteiros.add(valor);
  }
  
  var mensagem = numerosPares(inteiros);
  print(mensagem);
}

List<int> numerosPares(List<int> inteiros) {
  
  List<int> pares = [];
  for (int numero in inteiros) {
    if (numero % 2 == 0) {
      pares.add(numero);
    }
  }
  
  return pares;
}
