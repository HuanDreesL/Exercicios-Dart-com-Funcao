import 'dart:io';

void main() {
  stdout.write("Digite o número para Fatorial: ");
  int numeroFatorial = int.parse(stdin.readLineSync()!);

  int exibirFatorial = carcularFatorial(numeroFatorial);
  print(exibirFatorial);

}
  int carcularFatorial(int numeroFatorial){
    int Fatorial = 1;

    for(int i = 1; i <= numeroFatorial; i++){
      Fatorial = Fatorial * i;
    }
    return Fatorial;
  }

