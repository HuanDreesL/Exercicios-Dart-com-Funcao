import 'dart:io';

void main() {
  stdout.write("Digite um Número: ");
  int n1 = int.parse(stdin.readLineSync()!);
  
  var mensagem = verificarPrimos(n1);
  print(mensagem);

  }

  bool verificarPrimos(n1){
  bool primo = true;

    if(n1 != 2 || n1 != 3){
      for(int j = 2; j < n1; j++){
        if(n1 % j == 0){
          primo = false;
        }
      }
    }
    return primo;
  }





