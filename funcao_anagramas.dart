import 'dart:io';
void main(){
  String palavra1;
  String palavra2;
  int dec;
  do{
  stdout.write("Escreva a 1° Palavra: ");
  palavra1 = stdin.readLineSync()!;
  stdout.write("Escreva a 2° Palavra: ");
  palavra2 = stdin.readLineSync()!;

  var mensagem = verificAranagrama(palavra1, palavra2);
  print(mensagem);

  stdout.write("Deseja fazer uma nova tentativa?\n1-Sim\n2-Não\n:");
  dec = int.parse(stdin.readLineSync()!);
  }while(dec == 1);
  
}
bool verificAranagrama(String palavra1,String palavra2){
  bool ehanagrama = true;

  if(palavra1.length != palavra2.length){
    ehanagrama = false;
  } else {
    List<String> lista1 = palavra1.split('');
    List<String> lista2 = palavra2.split('');
    lista1.sort();
    lista2.sort();

    for(int i = 0; i < lista1.length; i++){
      if(lista1[i] != lista2[i]){
        ehanagrama = false;
        break;
      } 
    }
  }
  if(ehanagrama){
    print("As palavras escritas 1° $palavra1 e 2° $palavra2 são anagramas?");
  }
  else{
    print("As palavras escritas 1° $palavra1 e 2° $palavra2 são anagramas?");
  }
  return ehanagrama;
  
}
