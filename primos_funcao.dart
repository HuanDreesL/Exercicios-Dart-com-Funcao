import 'dart:io';

void main() {
  stdout.write("Digite um Número: ");
  int N1 = int.parse(stdin.readLineSync()!);
  
  var mensagem = verificarPrimos(N1);
  print(mensagem);

  }

  bool verificarPrimos(N1){
  bool primo = true;

    if(N1 != 2 || N1 != 3){
      for(int j = 2; j < N1; j++){
        if(N1 % j == 0){
          primo = false;
        }
      }
    }
    return primo;
  }





