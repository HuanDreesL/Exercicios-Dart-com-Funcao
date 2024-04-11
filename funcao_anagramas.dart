import 'dart:io';
void main(){
  String palavra1,palavra2;

  stdout.write("Escreva: ");
  palavra1 = stdin.readLineSync()!;
  stdout.write("Escreva: ");
  palavra2 = stdin.readLineSync()!;

  var mensagem = anagramas(palavra1, palavra2);
  print(mensagem);

}
bool anagramas(String palavra1, String palavra2){
  bool ehanagrama = true;
  
  if(palavra1.length != palavra2.length){
    ehanagrama = false;
  }
  List<String> lista1 = palavra1.split(''); // divide em lista de caracteres
  List<String> lista2 = palavra2.split('');
  lista1.sort(); // depois ordena elas em ordem alfabetica 
  lista2.sort();

  for(int i = 0; i < lista1.length; i++){
    if(lista1[i] != lista2[i]){ 
      ehanagrama = false;
      break;
    }
  }
  if(ehanagrama){
    print("A palavra $palavra1 e a palavra $palavra2 são anagramas?");
  }else{
    print("A palavra $palavra1 e a palavra $palavra2 são anagramas?");
  }
  return ehanagrama;
}
